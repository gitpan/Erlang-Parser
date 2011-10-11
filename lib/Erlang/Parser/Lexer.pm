# Copyright 2011 Anneli Cuss. ( anneli AT cpan DOT org )
# This is free software; you can redistribute it and/or modify it under the
# same terms as Perl itself.

package Erlang::Parser::Lexer;

use strict;
use warnings;
use 5.014;

use Parse::Lex;

# NOTE: not re-entrant due to P::L fun.
our $lexer_string = '';
our $skip_token = 0;

our ($EXTFUN, $INTCALL, $ATOM, $FLOAT, $INTEGER, $BASE_INTEGER, $DIRECTIVE, $LIT, $STRING, $CONTENT);
our ($ACONTENT, $ALIT, $AATOM, $OPENATOM);
our ($OPENRECORD, $RECORDACCESS);
our ($OPENSTRING, $WHITESPACE, $COMMENT, $LPAREN, $RPAREN, $PERIOD, $LARROW, $LDARROW, $RARROW);
our ($LISTOPEN, $LISTCLOSE, $DIVIDE, $ADD, $SUBTRACT, $MULTIPLY, $COMMA, $SEMICOLON, $COLON);
our ($ERROR, $VARIABLE, $MACRO, $TUPLEOPEN, $TUPLECLOSE, $TODODIRECTIVE, $EQUALS);
our ($KW_CASE, $KW_RECEIVE, $KW_AFTER, $KW_OF, $KW_END, $KW_FUN, $KW_WHEN, $KW_DIV);
our ($OPENBINARY, $CLOSEBINARY, $LISTADD, $LISTSUBTRACT, $EQUALITY, $NOT_EQUAL, $STRICTLY_EQUAL);
our ($KW_BSL, $KW_BSR, $KW_BOR, $KW_BAND, $KW_BXOR, $KW_REM, $KW_TRY, $KW_CATCH, $LTE, $GTE, $LT, $GT);
our ($SEND, $LITERAL, $PIPE, $COMPREHENSION, $CATCH_CLASS, $KW_ANDALSO, $KW_ORELSE, $KW_AND, $KW_OR, $KW_BEGIN);
our ($KW_NOT, $KW_IF, $NOT_QUITE_EQUAL);

our @tokens = (
    KW_CASE		=> q/case(?!\w)/,
    KW_RECEIVE		=> q/receive(?!\w)/,
    KW_AFTER		=> q/after(?!\w)/,
    KW_OF		=> q/of(?!\w)/,
    KW_END		=> q/end(?!\w)/,
    KW_FUN		=> q/fun(?!\w)/,
    KW_WHEN		=> q/when(?!\w)/,
    KW_DIV		=> q/div(?!\w)/,
    KW_BSL		=> q/bsl(?!\w)/,
    KW_BSR		=> q/bsr(?!\w)/,
    KW_BOR		=> q/bor(?!\w)/,
    KW_BAND		=> q/band(?!\w)/,
    KW_BXOR		=> q/bxor(?!\w)/,
    KW_REM		=> q/rem(?!\w)/,
    KW_TRY		=> q/try(?!\w)/,
    KW_CATCH		=> q/catch(?!\w)/,
    KW_ANDALSO		=> q/andalso(?!\w)/,
    KW_AND		=> q/and(?!\w)/,
    KW_ORELSE		=> q/orelse(?!\w)/,
    KW_OR		=> q/or(?!\w)/,
    KW_BEGIN		=> q/begin(?!\w)/,
    KW_NOT		=> q/not(?!\w)/,
    KW_IF		=> q/if(?!\w)/,
    CATCH_CLASS		=> q/(error|exit|throw):/,
    INTCALL		=> q/(\w+)\(/,
    ATOM		=> q/[a-z]([\w@.]*\w)?/,
    VARIABLE		=> q/[A-Z_]\w*/,
    MACRO		=> q/\?(\w+)/,
    FLOAT		=> q/-?\d+\.\d+([eE][+-]?\d+)?/,
    BASE_INTEGER	=> q/-?\d+#[a-zA-Z0-9]+/,
    INTEGER		=> q/-?\d+/,
    TODODIRECTIVE	=> [q/-(type|opaque|spec|if|endif)/, q/[^.]*/, q/\./], sub {
	$skip_token = 1;
    },
    DIRECTIVE		=> q/-(\w+)\(/,
    OPENRECORD		=> q/#/,
    RECORDACCESS	=> q/\.(\w+)/,

    'sqatom:ALIT'	=> q/\\\\./, sub {
	$lexer_string .= substr($_[1], 1);
	$skip_token = 1;
    },
    'sqatom:AATOM'	=> q/'/, sub {
	$_[0]->lexer->end('sqatom');
	$_[0]->lexer->setToken($ATOM);
	$lexer_string;
    },
    'sqatom:ACONTENT'	=> q/[^'\\\\]+/, sub {
	$lexer_string .= $_[1];
	$skip_token = 1;
    },
    OPENATOM		=> q/'/, sub {
	$_[0]->lexer->start('sqatom');
	$lexer_string = '';
	$skip_token = 1;
    },

    'dqstr:LIT'		=> q/\\\\./, sub {
	$lexer_string .= substr($_[1], 1);
	$skip_token = 1;
    },
    'dqstr:STRING'	=> q/"/, sub {
	$_[0]->lexer->end('dqstr');
	$lexer_string;
    },
    'dqstr:CONTENT'	=> q/[^"\\\\]+/, sub {
	$lexer_string .= $_[1];
	$skip_token = 1;
    },
    OPENSTRING		=> q/"/, sub {
	$_[0]->lexer->start('dqstr');
	$lexer_string = '';
	$skip_token = 1;
    },

    WHITESPACE		=> q/\s/, sub { $skip_token = 1 },
    COMMENT		=> q/%.*/, sub { $skip_token = 1 },

    LPAREN		=> q/\(/,
    RPAREN		=> q/\)/,
    PERIOD		=> q/\./,
    LARROW		=> q/<-/,
    RARROW		=> q/->/,
    LDARROW		=> q/<=/,
    LTE			=> q/=</,
    GTE			=> q/>=/,
    LISTOPEN		=> q/\[/,
    LISTCLOSE		=> q/\]/,
    TUPLEOPEN		=> q/{/,
    TUPLECLOSE		=> q/}/,
    LISTSUBTRACT	=> q/--/,
    LISTADD		=> q/\+\+/,
    EQUALITY		=> q/==/,
    STRICTLY_EQUAL	=> q/=:=/,
    NOT_QUITE_EQUAL	=> q/\/=/,
    NOT_EQUAL		=> q/=\/=/,
    EQUALS		=> q/=/,
    DIVIDE		=> q/\//,
    ADD			=> q/\+/,
    SUBTRACT		=> q/-/,
    MULTIPLY		=> q/\*/,
    COMMA		=> q/,/,
    SEMICOLON		=> q/;/,
    COLON		=> q/:/,
    OPENBINARY		=> q/<</,
    CLOSEBINARY		=> q/>>/,
    LT			=> q/</,
    GT			=> q/>/,
    COMPREHENSION	=> q/\|\|/,
    PIPE		=> q/\|/,
    SEND		=> q/!/,
    LITERAL		=> q/\$(\\\\.|.)/,
    ERROR		=> q/.*/, sub { die qq{can't analyse: "$_[1]"} },
);

Parse::Lex->exclusive(qw(dqstr sqatom));
our $lex = Parse::Lex->new(@tokens);
local $.;

sub lex {
    my $class = shift;
    $lex->from(@_);

    sub {
	my $token;

	$skip_token = 0;

	LOOP:while (1) {
	    $token = $lex->next;

	    if ($lex->eoi or not $token) {
		return ('', undef);
	    } elsif (not $skip_token) {
		last LOOP;
	    }
	    $skip_token = 0;
	}

	print STDERR $token->name, "(", $token->text, ") ";
	return ($token->name, $token->text);
    }
}

=over 4

=item C<lex>

Returns an anonymous subroutine that returns a token type/content pair on each
invocation, and C<('', undef)> when there's no more.

=cut

1;

# vim: set sw=4:
