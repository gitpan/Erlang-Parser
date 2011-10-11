# Copyright 2011 Anneli Cuss. ( anneli AT cpan DOT org )
# This is free software; you can redistribute it and/or modify it under the
# same terms as Perl itself.

package Erlang::Parser::Dumper;

use strict;
use warnings;
use 5.014;

use Data::Dumper;

our $depth = 0;

sub depth {
    my $self = shift;
    if (defined $_[0]) {
	$depth = $_[0]
    } else {
	$depth
    }
}

sub print_node {
    my $class = shift;
    my $fh = shift;
    my $kind = shift;

    if ($kind eq 'directive') {
	my ($directive, $args) = @_;
	print $fh "-$directive(";
	my $first = 1;
	foreach (@$args) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}
	print $fh ").\n";
    } elsif ($kind eq 'atom') {
	if (not $_[0] =~ /^[^a-z]|[^a-zA-Z_0-9]/) {
	    print $fh "$_[0]";
	} else {
	    print $fh "'";
	    print $fh $_[0] =~ s/\\/\\\\/rg =~ s/'/\\'/rg;
	    print $fh "'";
	}
    } elsif ($kind eq 'list') {
	print $fh '[';
	my $first = 1;
	foreach (@{$_[0]}) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}
	print $fh ']';
    } elsif ($kind eq 'divide') {
	print $fh '(';
	$class->print_node($fh, @{$_[0]});
	print $fh '/';
	$class->print_node($fh, @{$_[1]});
	print $fh ')';
    } elsif ($kind eq 'multiply') {
	print $fh '(';
	$class->print_node($fh, @{$_[0]});
	print $fh '*';
	$class->print_node($fh, @{$_[1]});
	print $fh ')';
    } elsif ($kind eq 'add') {
	print $fh '(';
	$class->print_node($fh, @{$_[0]});
	print $fh '+';
	$class->print_node($fh, @{$_[1]});
	print $fh ')';
    } elsif ($kind eq 'subtract') {
	print $fh '(';
	$class->print_node($fh, @{$_[0]});
	print $fh '-';
	$class->print_node($fh, @{$_[1]});
	print $fh ')';
    } elsif ($kind eq 'equals') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' = ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'integer') {
	print $fh $_[0];
    } elsif ($kind eq 'float') {
	print $fh $_[0];
    } elsif ($kind eq 'deflist') {
	my $first = 1;
	foreach (@{$_[0]}) {
	    if ($first) { $first = 0 } else { print $fh ";\n", "\t" x $depth }
	    $class->print_node($fh, @$_);
	}
	print $fh ".\n";
    } elsif ($kind eq 'def') {
	my ($name, $args, $whens, $stmts) = @_;
	print $fh "$name(";
    
	my $first = 1;
	foreach (@$args) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}
	
	$depth++;

	print $fh ") ";

	if (@$whens) {
	    print $fh 'when ';
	    $first = 1;
	    foreach (@$whens) {
		if ($first) { $first = 0 } else { print $fh ', ' }
		$class->print_node($fh, @$_);
	    }
	    print $fh ' ';
	}
	
	print $fh "->\n", "\t" x $depth;
	$first = 1;
	foreach (@$stmts) {
	    if ($first) { $first = 0 } else { print $fh ",\n", "\t" x $depth }
	    $class->print_node($fh, @$_);
	}

	$depth--;
    } elsif ($kind eq 'intcall') {
	my ($fun, $args) = @_;
	print $fh "$fun(";
	my $first = 1;
	foreach (@$args) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}
	print $fh ')';
    } elsif ($kind eq 'extcall' or $kind eq 'extcall-macro' or $kind eq 'extcall-var') {
	my ($mod, $fun, $args) = @_;

	if ($kind eq 'extcall-macro') {
	    print $fh "?$mod";
	} else {
	    print $fh $mod;
	}

	print $fh ":$fun(";
	my $first = 1;
	foreach (@$args) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}
	print $fh ')';
    } elsif ($kind eq 'string') {
	print $fh '"';
	print $fh $_[0] =~ s/\\/\\\\/rg =~ s/"/\\"/rg;
	print $fh '"';
    } elsif ($kind eq 'variable') {
	print $fh $_[0];
    } elsif ($kind eq 'macro') {
	print $fh "?$_[0]";
    } elsif ($kind eq 'tuple') {
	print $fh '{';
	my $first = 1;
	foreach (@{$_[0]}) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}
	print $fh '}';
    } elsif ($kind eq 'case') {
	my ($expr, $alts) = @_;

	print $fh 'case ';
	$class->print_node($fh, @$expr);
	print $fh " of\n";

	$depth++;

	print $fh "\t" x $depth;

	my $first = 1;
	foreach (@$alts) {
	    if ($first) { $first = 0 } else { print $fh ";\n", "\t" x $depth }
	    $class->print_node($fh, @$_);
	}

	$depth--;
	print $fh "\n", "\t" x $depth, "end";
    } elsif ($kind eq 'alt' or $kind eq 'catchalt') {
	my $catchclass = $kind eq 'catchalt' ? shift : undef;
	my ($expr, $stmts) = @_;

	print $fh "$catchclass:" if $catchclass;
	$class->print_node($fh, @$expr);
	$depth++;
	print $fh " ->\n", "\t" x $depth;

	my $first = 1;
	foreach (@$stmts) {
	    if ($first) { $first = 0 } else { print $fh ",\n", "\t" x $depth }
	    $class->print_node($fh, @$_);
	}

	$depth--;
    } elsif ($kind eq 'fun-local') {
	my ($exprs, $stmts) = @_;
	print $fh 'fun(';

	my $first = 1;
	foreach (@$exprs) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}

	print $fh ') -> ';
	$first = 1;
	foreach (@$stmts) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}

	print $fh ' end';
    } elsif ($kind eq 'fun-ext') {
	print $fh 'fun ';
	$class->print_node($fh, 'atom', $_[0]);
	print $fh ':';
	$class->print_node($fh, 'atom', $_[1]);
	print $fh "/$_[2]";
    } elsif ($kind eq 'fun-ext-macro') {
	print $fh "fun ?$_[0]:";
	$class->print_node($fh, 'atom', $_[1]);
	print $fh "/$_[2]";
    } elsif ($kind eq 'fun-ext-var') {
	print $fh "fun $_[0]:";
	$class->print_node($fh, 'atom', $_[1]);
	print $fh "/$_[2]";
    } elsif ($kind eq 'fun-int') {
	print $fh "fun $_[0]/$_[1]";
    } elsif ($kind eq 'record-new') {
	print $fh '#';
	$class->print_node($fh, 'atom', $_[0]);
	print $fh '{';

	my $first = 1;
	foreach (@{$_[1]}) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}

	print $fh '}';
    } elsif ($kind eq 'variable-record-access') {
	$class->print_node($fh, 'variable', $_[0]);
	print $fh '#';
	$class->print_node($fh, 'atom', $_[1]);
    } elsif ($kind eq 'variable-record-update') {
	$class->print_node($fh, 'variable', $_[0]);
	print $fh '#';
	$class->print_node($fh, 'atom', $_[1]);
	print $fh '{';

	my $first = 1;
	foreach (@{$_[2]}) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}

	print $fh '}';
    } elsif ($kind eq 'binary') {
	print $fh '<<';

	my $first = 1;
	foreach (@{$_[0]}) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}

	print $fh '>>';
    } elsif ($kind eq 'receive') {
	my ($alts, $after) = @_;

	print $fh "receive\n";

	$depth++;

	print $fh "\t" x $depth;

	my $first = 1;
	foreach (@$alts) {
	    if ($first) { $first = 0 } else { print $fh ";\n", "\t" x $depth }
	    $class->print_node($fh, @$_);
	}

	$depth--;
	print $fh "\n", "\t" x $depth;
	
	if (defined $after) {
	    print $fh 'after ';
	    $class->print_node($fh, @{$after->[0]});

	    $depth++;
	    print $fh " ->\n", "\t" x $depth;

	    $first = 1;
	    foreach (@{$after->[1]}) {
		if ($first) { $first = 0 } else { print $fh ",\n", "\t" x $depth }
		$class->print_node($fh, @$_);
	    }

	    $depth--;
	}
	
	print $fh "\n", "\t" x $depth, "end";
    } elsif ($kind eq 'list-add') {
	print $fh '(';
	$class->print_node($fh, @{$_[0]});
	print $fh '++';
	$class->print_node($fh, @{$_[1]});
	print $fh ')';
    } elsif ($kind eq 'list-subtract') {
	print $fh '(';
	$class->print_node($fh, @{$_[0]});
	print $fh '--';
	$class->print_node($fh, @{$_[1]});
	print $fh ')';
    } elsif ($kind eq 'lte') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' =< ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'gte') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' >= ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'lt') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' < ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'gt') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' > ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'base-integer') {
	print $fh $_[0];
    } elsif ($kind eq 'comprehension') {
	print $fh '[';
	$class->print_node($fh, @{$_[0]});
	print $fh ' || ';
	
	my $first = 1;
	foreach (@{$_[1]}) {
	    if ($first) { $first = 0 } else { print $fh ', ' }
	    $class->print_node($fh, @$_);
	}
	print $fh ']';
    } elsif ($kind eq 'larrow') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' <- ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'ldarrow') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' <= ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'not-equal') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' =/= ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'equality') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' == ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'strictly-equal') {
	$class->print_node($fh, @{$_[0]});
	print $fh ' =:= ';
	$class->print_node($fh, @{$_[1]});
    } elsif ($kind eq 'bor' or $kind eq 'band' or $kind eq 'bxor' or
	     $kind eq 'bsl' or $kind eq 'bsr' or
	     $kind eq 'div' or $kind eq 'rem' or
	     $kind eq 'andalso' or $kind eq 'orelse') {
	print $fh '(';
	$class->print_node($fh, @{$_[0]});
	print $fh " $kind ";
	$class->print_node($fh, @{$_[1]});
	print $fh ')';
    } elsif ($kind eq 'binary-qualified') {
	print $fh "$_[0]";
	print $fh ":$_[1]" if defined $_[1];
	print $fh "/$_[2]" if defined $_[2];
    } elsif ($kind eq 'send') {
	print $fh '(';
	$class->print_node($fh, @{$_[0]});
	print $fh ' ! ';
	$class->print_node($fh, @{$_[1]});
	print $fh ')';
    } elsif ($kind eq 'literal') {
	print $fh '$';
	print $fh chr($_[0]);
    } elsif ($kind eq 'try') {
	my ($exprs, $alts, $catches, $afters) = @_;

	print $fh "try\n";

	$depth++;
	print $fh "\t" x $depth;

	my $first = 1;
	foreach (@$exprs) {
	    if ($first) { $first = 0 } else { print $fh ";\n", "\t" x $depth }
	    $class->print_node($fh, @$_);
	}

	$depth--;
	print $fh "\n", "\t" x $depth;

	if ($alts) {
	    print $fh "of\n";

	    $depth++;
	    print $fh "\t" x $depth;

	    my $first = 1;
	    foreach (@$alts) {
		if ($first) { $first = 0 } else { print $fh ";\n", "\t" x $depth }
		$class->print_node($fh, @$_);
	    }

	    $depth--;
	    print $fh "\n", "\t" x $depth;
	}

	if ($catches) {
	    print $fh "catch\n";

	    $depth++;
	    print $fh "\t" x $depth;

	    my $first = 1;
	    foreach (@$catches) {
		if ($first) { $first = 0 } else { print $fh ";\n", "\t" x $depth }
		$class->print_node($fh, @$_);
	    }

	    $depth--;
	    print $fh "\n", "\t" x $depth;
	}

	if ($afters) {
	    print $fh "after\n";

	    $depth++;
	    print $fh "\t" x $depth;

	    my $first = 1;
	    foreach (@$afters) {
		if ($first) { $first = 0 } else { print $fh ";\n", "\t" x $depth }
		$class->print_node($fh, @$_);
	    }

	    $depth--;
	    print $fh "\n", "\t" x $depth;
	}
    
	print $fh "end";
    } else {
	print $fh "??<", Dumper($kind), ">??";
	exit 5;
    }
}

=over 4

=item C<depth>

Returns the current depth of the pretty-printer, or sets it to the argument if
one is given.

=item C<print_node>

Prints a node to the given filehandle.

=cut

1;

# vim: set sw=4:
