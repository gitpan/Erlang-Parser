# Copyright 2011 Anneli Cuss. ( anneli AT cpan DOT org )
# This is free software; you can redistribute it and/or modify it under the
# same terms as Perl itself.

package Erlang::Parser;

use strict;
use warnings;
use 5.014;

use Erlang::Parser::Dumper;
use Erlang::Parser::Lexer;
use Erlang::Parser::Parser;

sub parse {
    my $class = shift;

    my $parser = new Erlang::Parser::Parser;
    my $lexerfn = Erlang::Parser::Lexer->lex(@_);
    @{$parser->YYParse(yylex => $lexerfn, yyerror => \&error)};
}

sub error {
    say STDERR "Parse error!";
    print STDERR "Failed token was ", $_[0]->YYCurtok;
    print STDERR ", value ", $_[0]->YYCurval;
    print STDERR ", expected ", join(',', $_[0]->YYExpect);
    print STDERR ".\n";
}

sub print_nodes {
    my ($class, $fh, @nodes) = @_;
    Erlang::Parser::Dumper->depth(0);
    Erlang::Parser::Dumper->print_node($fh, @$_) foreach (@nodes);
}

=head1 NAME

Erlang::Parser - Erlang source code parser

=head1 VERSION

Version 0.1

=cut

our $VERSION = '0.1';

=head1 SYNOPSIS

    use Erlang::Parser;

    my $tree = Erlang::Parser->parse(\*DATA);
    Erlang::Parser->print_tree(*STDOUT, $tree);

=head1 DESCRIPTION

L<Erlang::Parser> is an Erlang source code parser.  You can feed C<parse()> any
fragment of code which would be acceptable at the top-level of a C<.erl> file,
including a full file.

=head2 Methods

=over 4

=item C<parse>

Parses an top-level Erlang declarations from a string, list of lines of code,
or filehandle.  Returns a list of top-level nodes.

    my @nodes = Erlang::Parser->parse(
	'myfun(X) -> X + X.',
	'myfun(X, Y) -> X + Y.',
    );

=item C<error>

Called when an error occurs. Reports based on the parser given as the first
argument.

=item C<print_nodes>

Prints the given nodes.

    my @nodes = Erlang::Parser->parse(\*DATA);
    Erlang::Parser->print_nodes($fh, @nodes);

=back

=head1 AUTHOR

Anneli Cuss, C<< <anneli at cpan.org> >>

=head1 SUPPORT

You can find documentation for L<Erlang::Parser> with the perldoc command.

    perldoc Erlang::Parser

Other places of interest:

=over 4

=item * GitHub: source code repository

L<http://github.com/anneli/Erlang--Parser>

=item * GitHub: open an issue

L<http://github.com/anneli/Erlang--Parser/issues>

=item * Mailing list

L<http://groups.google.com/group/erlang--parser-devel>, <erlang--parser-devel@googlegroups.com>

=item * Twitter: the author

L<http://twitter.com/unnali>

=back

=head1 LICENSE AND COPYRIGHT

Copyright 2011 Anneli Cuss.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1;

# vim: set sw=4:
