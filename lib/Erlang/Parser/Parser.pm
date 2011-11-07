####################################################################
#
#    This file was generated using Parse::Yapp version 1.05.
#
#        Don't edit this file, use source file instead.
#
#             ANY CHANGE MADE HERE WILL BE LOST !
#
####################################################################
package Erlang::Parser::Parser;
use vars qw ( @ISA );
use strict;

@ISA= qw ( Parse::Yapp::Driver );
use Parse::Yapp::Driver;

#line 18 "lib/Erlang/Parser/Parser.yp"

    use strict;
    use warnings;

    use Erlang::Parser::Node::Directive;
    use Erlang::Parser::Node::DefList;
    use Erlang::Parser::Node::Def;
    use Erlang::Parser::Node::WhenList;
    use Erlang::Parser::Node::Atom;
    use Erlang::Parser::Node::Integer;
    use Erlang::Parser::Node::BinOp;
    use Erlang::Parser::Node::List;
    use Erlang::Parser::Node::Variable;
    use Erlang::Parser::Node::Tuple;
    use Erlang::Parser::Node::Macro;
    use Erlang::Parser::Node::String;
    use Erlang::Parser::Node::Call;
    use Erlang::Parser::Node::Alt;
    use Erlang::Parser::Node::Try;
    use Erlang::Parser::Node::Literal;
    use Erlang::Parser::Node::FunRef;
    use Erlang::Parser::Node::FunLocal;
    use Erlang::Parser::Node::FunLocalCase;
    use Erlang::Parser::Node::Case;
    use Erlang::Parser::Node::RecordNew;
    use Erlang::Parser::Node::VariableRecordAccess;
    use Erlang::Parser::Node::VariableRecordUpdate;
    use Erlang::Parser::Node::Float;
    use Erlang::Parser::Node::BaseInteger;
    use Erlang::Parser::Node::BinaryExpr;
    use Erlang::Parser::Node::Binary;
    use Erlang::Parser::Node::UnOp;
    use Erlang::Parser::Node::Begin;
    use Erlang::Parser::Node::Comprehension;
    use Erlang::Parser::Node::If;
    use Erlang::Parser::Node::IfExpr;
    use Erlang::Parser::Node::Receive;
    use Erlang::Parser::Node::ReceiveAfter;

    sub new_node {
	my ($kind, %args) = @_;
	"Erlang::Parser::Node::$kind"->new(%args);
    }


sub new {
        my($class)=shift;
        ref($class)
    and $class=ref($class);

    my($self)=$class->SUPER::new( yyversion => '1.05',
                                  yystates =>
[
	{#State 0
		DEFAULT => -1,
		GOTOS => {
			'root' => 1
		}
	},
	{#State 1
		ACTIONS => {
			'' => 3,
			'SUBTRACT' => 5,
			'ATOM' => 4
		},
		GOTOS => {
			'deflist' => 2,
			'def' => 6,
			'rootstmt' => 7
		}
	},
	{#State 2
		ACTIONS => {
			'PERIOD' => 8,
			'SEMICOLON' => 9
		}
	},
	{#State 3
		DEFAULT => 0
	},
	{#State 4
		ACTIONS => {
			'LPAREN' => 10
		}
	},
	{#State 5
		ACTIONS => {
			'ATOM' => 11
		}
	},
	{#State 6
		DEFAULT => -5
	},
	{#State 7
		DEFAULT => -2
	},
	{#State 8
		DEFAULT => -4
	},
	{#State 9
		ACTIONS => {
			'ATOM' => 4
		},
		GOTOS => {
			'def' => 12
		}
	},
	{#State 10
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'LITERAL' => 45,
			'KW_BEGIN' => 44,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 25,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 11
		ACTIONS => {
			'LPAREN' => 60
		}
	},
	{#State 12
		DEFAULT => -6
	},
	{#State 13
		ACTIONS => {
			'ATOM' => 29
		},
		GOTOS => {
			'atom' => 61
		}
	},
	{#State 14
		ACTIONS => {
			'INTEGER' => 28,
			'OPENRECORD' => 13,
			'ATOM' => 29,
			'OPENBINARY' => 62,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'MACRO' => 35,
			'LISTOPEN' => 67,
			'FLOAT' => 51
		},
		DEFAULT => -106,
		GOTOS => {
			'binarylist' => 68,
			'newrecord' => 40,
			'variable' => 41,
			'binary' => 64,
			'parenexpr' => 70,
			'binaryexpr' => 69,
			'string' => 16,
			'parenorimm' => 65,
			'atom' => 23,
			'tuple' => 58,
			'optbinarylist' => 63,
			'macro' => 36,
			'list' => 27,
			'immexpr' => 66
		}
	},
	{#State 15
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 71,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 16
		ACTIONS => {
			'STRING' => 72
		},
		DEFAULT => -66
	},
	{#State 17
		DEFAULT => -64
	},
	{#State 18
		DEFAULT => -18
	},
	{#State 19
		DEFAULT => -23
	},
	{#State 20
		DEFAULT => -21
	},
	{#State 21
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'altlist' => 73,
			'expr' => 74,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'alt' => 75,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 22
		DEFAULT => -59
	},
	{#State 23
		DEFAULT => -75
	},
	{#State 24
		DEFAULT => -82
	},
	{#State 25
		ACTIONS => {
			'RPAREN' => 76
		}
	},
	{#State 26
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 77,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 27
		DEFAULT => -70
	},
	{#State 28
		DEFAULT => -65
	},
	{#State 29
		DEFAULT => -76
	},
	{#State 30
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 78,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 31
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'ifseq' => 79,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 81,
			'ifexpr' => 80,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'iflist' => 82,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 32
		DEFAULT => -19
	},
	{#State 33
		DEFAULT => -20
	},
	{#State 34
		ACTIONS => {
			'COLON' => 84,
			'LPAREN' => 83
		}
	},
	{#State 35
		DEFAULT => -77
	},
	{#State 36
		DEFAULT => -73
	},
	{#State 37
		ACTIONS => {
			'LPAREN' => -62,
			'COLON' => -62
		},
		DEFAULT => -16
	},
	{#State 38
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 85,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 39
		DEFAULT => -95
	},
	{#State 40
		DEFAULT => -72
	},
	{#State 41
		ACTIONS => {
			'OPENRECORD' => 86
		},
		DEFAULT => -74,
		GOTOS => {
			'newrecord' => 87
		}
	},
	{#State 42
		DEFAULT => -78
	},
	{#State 43
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 88,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 44
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 89,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 45
		DEFAULT => -69
	},
	{#State 46
		DEFAULT => -17
	},
	{#State 47
		DEFAULT => -79
	},
	{#State 48
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -14
	},
	{#State 49
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 120,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 119,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 50
		DEFAULT => -57
	},
	{#State 51
		DEFAULT => -63
	},
	{#State 52
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 121,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 53
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 122,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 54
		ACTIONS => {
			'COMMA' => 123
		},
		DEFAULT => -13
	},
	{#State 55
		ACTIONS => {
			'LPAREN' => -61,
			'COLON' => -61
		},
		DEFAULT => -60
	},
	{#State 56
		ACTIONS => {
			'ATOM' => 126,
			'VARIABLE' => 42,
			'MACRO' => 35,
			'LPAREN' => 124
		},
		GOTOS => {
			'variable' => 129,
			'funlocalcase' => 127,
			'atom' => 125,
			'funlocallist' => 130,
			'macro' => 128
		}
	},
	{#State 57
		DEFAULT => -22
	},
	{#State 58
		DEFAULT => -71
	},
	{#State 59
		DEFAULT => -81
	},
	{#State 60
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 131,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 61
		ACTIONS => {
			'TUPLEOPEN' => 132
		}
	},
	{#State 62
		ACTIONS => {
			'INTEGER' => 28,
			'OPENRECORD' => 13,
			'ATOM' => 29,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'MACRO' => 35,
			'LISTOPEN' => 67,
			'FLOAT' => 51
		},
		DEFAULT => -106,
		GOTOS => {
			'binarylist' => 68,
			'newrecord' => 40,
			'variable' => 41,
			'parenexpr' => 70,
			'binaryexpr' => 69,
			'string' => 16,
			'parenorimm' => 65,
			'atom' => 23,
			'tuple' => 58,
			'optbinarylist' => 63,
			'macro' => 36,
			'list' => 27,
			'immexpr' => 66
		}
	},
	{#State 63
		ACTIONS => {
			'CLOSEBINARY' => 133
		}
	},
	{#State 64
		ACTIONS => {
			'COMPREHENSION' => 134
		}
	},
	{#State 65
		ACTIONS => {
			'COLON' => 136
		},
		DEFAULT => -111,
		GOTOS => {
			'optbinarysize' => 135
		}
	},
	{#State 66
		DEFAULT => -62
	},
	{#State 67
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 119,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 68
		ACTIONS => {
			'COMMA' => 137
		},
		DEFAULT => -107
	},
	{#State 69
		DEFAULT => -108
	},
	{#State 70
		DEFAULT => -61
	},
	{#State 71
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'RPAREN' => 138,
			'SEND' => 101,
			'GTE' => 102,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'KW_DIV' => 103,
			'EQUAL' => 95,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'SUBTRACT' => 96,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'LTE' => 97,
			'LT' => 112,
			'KW_BOR' => 111,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'LARROW' => 98,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BAND' => 99,
			'NOT_EQUAL' => 118,
			'KW_BSR' => 117,
			'LISTADD' => 100
		}
	},
	{#State 72
		DEFAULT => -80
	},
	{#State 73
		ACTIONS => {
			'KW_AFTER' => 141,
			'SEMICOLON' => 140
		},
		DEFAULT => -118,
		GOTOS => {
			'after' => 139
		}
	},
	{#State 74
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'KW_WHEN' => 142,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 143
		}
	},
	{#State 75
		DEFAULT => -92
	},
	{#State 76
		ACTIONS => {
			'KW_WHEN' => 142
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 144
		}
	},
	{#State 77
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'SEND' => 101,
			'GTE' => 102,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'KW_DIV' => 103,
			'EQUAL' => 95,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'KW_OF' => 145,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'SUBTRACT' => 96,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'LTE' => 97,
			'LT' => 112,
			'KW_BOR' => 111,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'LARROW' => 98,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BAND' => 99,
			'NOT_EQUAL' => 118,
			'KW_BSR' => 117,
			'LISTADD' => 100
		}
	},
	{#State 78
		ACTIONS => {
			'LISTADD' => 100,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -52
	},
	{#State 79
		ACTIONS => {
			'RARROW' => 146,
			'COMMA' => 147
		}
	},
	{#State 80
		DEFAULT => -133
	},
	{#State 81
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -136
	},
	{#State 82
		ACTIONS => {
			'KW_END' => 148,
			'SEMICOLON' => 149
		}
	},
	{#State 83
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 150,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 84
		ACTIONS => {
			'INTEGER' => 28,
			'OPENRECORD' => 13,
			'ATOM' => 29,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'MACRO' => 35,
			'LISTOPEN' => 67,
			'FLOAT' => 51
		},
		GOTOS => {
			'newrecord' => 40,
			'variable' => 41,
			'parenexpr' => 70,
			'string' => 16,
			'parenorimm' => 151,
			'atom' => 23,
			'tuple' => 58,
			'intcall' => 152,
			'macro' => 36,
			'list' => 27,
			'immexpr' => 66
		}
	},
	{#State 85
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -54
	},
	{#State 86
		ACTIONS => {
			'ATOM' => 29
		},
		GOTOS => {
			'atom' => 153
		}
	},
	{#State 87
		DEFAULT => -68
	},
	{#State 88
		ACTIONS => {
			'TUPLECLOSE' => 154
		}
	},
	{#State 89
		ACTIONS => {
			'KW_END' => 155
		}
	},
	{#State 90
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 156,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 91
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 157,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 92
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 158,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 93
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 159,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 94
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 160,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 95
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 161,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 96
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 162,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 97
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 163,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 98
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 164,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 99
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 165,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 100
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 166,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 101
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 167,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 102
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 168,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 103
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 169,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 104
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 170,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 105
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 171,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 106
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 172,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 107
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 173,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 108
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 174,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 109
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 175,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 110
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 176,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 111
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 177,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 112
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 178,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 113
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 179,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 114
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 180,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 115
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 181,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 116
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 182,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 117
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 183,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 118
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 184,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 119
		ACTIONS => {
			'PIPE' => 185
		},
		DEFAULT => -86,
		GOTOS => {
			'listcdr' => 186
		}
	},
	{#State 120
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'COMPREHENSION' => 187,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -14
	},
	{#State 121
		ACTIONS => {
			'KW_OF' => 189
		},
		DEFAULT => -121,
		GOTOS => {
			'opttryof' => 188
		}
	},
	{#State 122
		ACTIONS => {
			'LISTADD' => 100,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -53
	},
	{#State 123
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 190,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 124
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 191,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 125
		ACTIONS => {
			'COLON' => 192
		}
	},
	{#State 126
		ACTIONS => {
			'DIVIDE' => 193
		},
		DEFAULT => -76
	},
	{#State 127
		DEFAULT => -101
	},
	{#State 128
		ACTIONS => {
			'COLON' => 194
		}
	},
	{#State 129
		ACTIONS => {
			'COLON' => 195
		}
	},
	{#State 130
		ACTIONS => {
			'KW_END' => 196,
			'SEMICOLON' => 197
		}
	},
	{#State 131
		ACTIONS => {
			'RPAREN' => 198
		}
	},
	{#State 132
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 199,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 133
		DEFAULT => -105
	},
	{#State 134
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 200,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 135
		ACTIONS => {
			'DIVIDE' => 201
		},
		DEFAULT => -113,
		GOTOS => {
			'optbinaryqualifier' => 202
		}
	},
	{#State 136
		ACTIONS => {
			'INTEGER' => 28,
			'OPENRECORD' => 13,
			'ATOM' => 29,
			'VARIABLE' => 42,
			'TUPLEOPEN' => 43,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'MACRO' => 35,
			'LISTOPEN' => 67,
			'FLOAT' => 51
		},
		GOTOS => {
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'atom' => 23,
			'tuple' => 58,
			'macro' => 36,
			'list' => 27,
			'immexpr' => 203
		}
	},
	{#State 137
		ACTIONS => {
			'INTEGER' => 28,
			'OPENRECORD' => 13,
			'ATOM' => 29,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'MACRO' => 35,
			'LISTOPEN' => 67,
			'FLOAT' => 51
		},
		GOTOS => {
			'newrecord' => 40,
			'variable' => 41,
			'binaryexpr' => 204,
			'parenexpr' => 70,
			'string' => 16,
			'parenorimm' => 65,
			'atom' => 23,
			'tuple' => 58,
			'macro' => 36,
			'list' => 27,
			'immexpr' => 66
		}
	},
	{#State 138
		DEFAULT => -58
	},
	{#State 139
		ACTIONS => {
			'KW_END' => 205
		}
	},
	{#State 140
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 74,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'alt' => 206,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 141
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 207,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 142
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 208,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 143
		ACTIONS => {
			'RARROW' => 209,
			'COMMA' => 211,
			'SEMICOLON' => 210
		}
	},
	{#State 144
		ACTIONS => {
			'RARROW' => 212,
			'COMMA' => 211,
			'SEMICOLON' => 210
		}
	},
	{#State 145
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'altlist' => 213,
			'expr' => 74,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'alt' => 75,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 146
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'stmtlist' => 214,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 147
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 215,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 148
		DEFAULT => -132
	},
	{#State 149
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'ifseq' => 79,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'ifexpr' => 216,
			'expr' => 81,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 150
		ACTIONS => {
			'RPAREN' => 217
		}
	},
	{#State 151
		ACTIONS => {
			'LPAREN' => 83
		}
	},
	{#State 152
		DEFAULT => -84
	},
	{#State 153
		ACTIONS => {
			'TUPLEOPEN' => 132
		},
		DEFAULT => -67
	},
	{#State 154
		DEFAULT => -90
	},
	{#State 155
		DEFAULT => -24
	},
	{#State 156
		ACTIONS => {
			'LISTADD' => 100,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -30
	},
	{#State 157
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -49
	},
	{#State 158
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -48
	},
	{#State 159
		ACTIONS => {
			'DIVIDE' => 90,
			'MULTIPLY' => 94,
			'SUBTRACT' => 96,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108,
			'ADD' => 110,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117
		},
		DEFAULT => -51
	},
	{#State 160
		ACTIONS => {
			'LISTADD' => 100,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -32
	},
	{#State 161
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -38
	},
	{#State 162
		ACTIONS => {
			'DIVIDE' => 90,
			'MULTIPLY' => 94,
			'LISTADD' => 100,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -34
	},
	{#State 163
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -27
	},
	{#State 164
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -55
	},
	{#State 165
		ACTIONS => {
			'DIVIDE' => 90,
			'MULTIPLY' => 94,
			'SUBTRACT' => 96,
			'LISTADD' => 100,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108,
			'ADD' => 110
		},
		DEFAULT => -45
	},
	{#State 166
		ACTIONS => {
			'LISTADD' => 100,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -36
	},
	{#State 167
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'SUBTRACT' => 96,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108,
			'ADD' => 110,
			'KW_BOR' => 111,
			'KW_BXOR' => 113,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117
		},
		DEFAULT => -25
	},
	{#State 168
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -29
	},
	{#State 169
		ACTIONS => {
			'LISTADD' => 100,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -31
	},
	{#State 170
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -56
	},
	{#State 171
		ACTIONS => {
			'LISTADD' => 100,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -47
	},
	{#State 172
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -28
	},
	{#State 173
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -35
	},
	{#State 174
		ACTIONS => {
			'LISTADD' => 100,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -37
	},
	{#State 175
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -39
	},
	{#State 176
		ACTIONS => {
			'DIVIDE' => 90,
			'MULTIPLY' => 94,
			'LISTADD' => 100,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108
		},
		DEFAULT => -33
	},
	{#State 177
		ACTIONS => {
			'DIVIDE' => 90,
			'MULTIPLY' => 94,
			'SUBTRACT' => 96,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108,
			'ADD' => 110,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117
		},
		DEFAULT => -44
	},
	{#State 178
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -26
	},
	{#State 179
		ACTIONS => {
			'DIVIDE' => 90,
			'MULTIPLY' => 94,
			'SUBTRACT' => 96,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108,
			'ADD' => 110,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117
		},
		DEFAULT => -46
	},
	{#State 180
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -40
	},
	{#State 181
		ACTIONS => {
			'DIVIDE' => 90,
			'MULTIPLY' => 94,
			'SUBTRACT' => 96,
			'LISTADD' => 100,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108,
			'ADD' => 110
		},
		DEFAULT => -50
	},
	{#State 182
		ACTIONS => {
			'DIVIDE' => 90,
			'MULTIPLY' => 94,
			'SUBTRACT' => 96,
			'LISTADD' => 100,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108,
			'ADD' => 110
		},
		DEFAULT => -42
	},
	{#State 183
		ACTIONS => {
			'DIVIDE' => 90,
			'MULTIPLY' => 94,
			'SUBTRACT' => 96,
			'LISTADD' => 100,
			'KW_DIV' => 103,
			'KW_REM' => 105,
			'LISTSUBTRACT' => 108,
			'ADD' => 110
		},
		DEFAULT => -43
	},
	{#State 184
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => undef,
			'SUBTRACT' => 96,
			'LTE' => undef,
			'LARROW' => undef,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => undef,
			'KW_DIV' => 103,
			'LDARROW' => undef,
			'KW_REM' => 105,
			'GT' => undef,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => undef,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => undef,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => undef,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -41
	},
	{#State 185
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 218,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 186
		ACTIONS => {
			'LISTCLOSE' => 219
		}
	},
	{#State 187
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 220,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 188
		ACTIONS => {
			'KW_CATCH' => 221
		},
		DEFAULT => -123,
		GOTOS => {
			'opttrycatch' => 222
		}
	},
	{#State 189
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'altlist' => 223,
			'expr' => 74,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'alt' => 75,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 190
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -15
	},
	{#State 191
		ACTIONS => {
			'RPAREN' => 224
		}
	},
	{#State 192
		ACTIONS => {
			'ATOM' => 225
		}
	},
	{#State 193
		ACTIONS => {
			'INTEGER' => 226
		}
	},
	{#State 194
		ACTIONS => {
			'ATOM' => 227
		}
	},
	{#State 195
		ACTIONS => {
			'ATOM' => 228
		}
	},
	{#State 196
		DEFAULT => -100
	},
	{#State 197
		ACTIONS => {
			'LPAREN' => 124
		},
		GOTOS => {
			'funlocalcase' => 229
		}
	},
	{#State 198
		ACTIONS => {
			'PERIOD' => 230
		}
	},
	{#State 199
		ACTIONS => {
			'TUPLECLOSE' => 231
		}
	},
	{#State 200
		ACTIONS => {
			'CLOSEBINARY' => 232
		}
	},
	{#State 201
		ACTIONS => {
			'ATOM' => 233
		},
		GOTOS => {
			'binaryqualifier' => 234
		}
	},
	{#State 202
		DEFAULT => -110
	},
	{#State 203
		DEFAULT => -112
	},
	{#State 204
		DEFAULT => -109
	},
	{#State 205
		DEFAULT => -117
	},
	{#State 206
		DEFAULT => -93
	},
	{#State 207
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'SEND' => 101,
			'GTE' => 102,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'KW_DIV' => 103,
			'EQUAL' => 95,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'SUBTRACT' => 96,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'LTE' => 97,
			'LT' => 112,
			'KW_BOR' => 111,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'LARROW' => 98,
			'KW_AND' => 115,
			'RARROW' => 235,
			'KW_BSL' => 116,
			'KW_BAND' => 99,
			'NOT_EQUAL' => 118,
			'KW_BSR' => 117,
			'LISTADD' => 100
		}
	},
	{#State 208
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -9
	},
	{#State 209
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'stmtlist' => 236,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 210
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 237,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 211
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 238,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 212
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'stmtlist' => 239,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 213
		ACTIONS => {
			'KW_END' => 240,
			'SEMICOLON' => 140
		}
	},
	{#State 214
		ACTIONS => {
			'COMMA' => 123
		},
		DEFAULT => -135
	},
	{#State 215
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -137
	},
	{#State 216
		DEFAULT => -134
	},
	{#State 217
		DEFAULT => -83
	},
	{#State 218
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'SEND' => 101,
			'GTE' => 102,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'KW_DIV' => 103,
			'EQUAL' => 95,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'SUBTRACT' => 96,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'LTE' => 97,
			'LT' => 112,
			'KW_BOR' => 111,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'LARROW' => 98,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BAND' => 99,
			'NOT_EQUAL' => 118,
			'KW_BSR' => 117,
			'LISTADD' => 100
		},
		DEFAULT => -87
	},
	{#State 219
		DEFAULT => -85
	},
	{#State 220
		ACTIONS => {
			'LISTCLOSE' => 241
		}
	},
	{#State 221
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 245,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 243,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 246,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'catchalt' => 242,
			'binary' => 32,
			'parenexpr' => 55,
			'catchaltlist' => 244,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 222
		ACTIONS => {
			'KW_AFTER' => 248
		},
		DEFAULT => -125,
		GOTOS => {
			'opttryafter' => 247
		}
	},
	{#State 223
		ACTIONS => {
			'SEMICOLON' => 140
		},
		DEFAULT => -122
	},
	{#State 224
		ACTIONS => {
			'KW_WHEN' => 142
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 249
		}
	},
	{#State 225
		ACTIONS => {
			'DIVIDE' => 250
		}
	},
	{#State 226
		DEFAULT => -99
	},
	{#State 227
		ACTIONS => {
			'DIVIDE' => 251
		}
	},
	{#State 228
		ACTIONS => {
			'DIVIDE' => 252
		}
	},
	{#State 229
		DEFAULT => -102
	},
	{#State 230
		DEFAULT => -3
	},
	{#State 231
		DEFAULT => -104
	},
	{#State 232
		DEFAULT => -89
	},
	{#State 233
		DEFAULT => -115
	},
	{#State 234
		ACTIONS => {
			'SUBTRACT' => 253
		},
		DEFAULT => -114
	},
	{#State 235
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'stmtlist' => 254,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 236
		ACTIONS => {
			'COMMA' => 123
		},
		DEFAULT => -94
	},
	{#State 237
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -11
	},
	{#State 238
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -10
	},
	{#State 239
		ACTIONS => {
			'COMMA' => 123
		},
		DEFAULT => -7
	},
	{#State 240
		DEFAULT => -91
	},
	{#State 241
		DEFAULT => -88
	},
	{#State 242
		DEFAULT => -127
	},
	{#State 243
		ACTIONS => {
			'COLON' => 255
		},
		DEFAULT => -76
	},
	{#State 244
		ACTIONS => {
			'SEMICOLON' => 256
		},
		DEFAULT => -124
	},
	{#State 245
		ACTIONS => {
			'COLON' => 257
		},
		DEFAULT => -78
	},
	{#State 246
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'KW_WHEN' => 142,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 258
		}
	},
	{#State 247
		ACTIONS => {
			'KW_END' => 259
		}
	},
	{#State 248
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'exprlist' => 260,
			'list' => 27,
			'stmtlist' => 54,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 249
		ACTIONS => {
			'RARROW' => 261,
			'COMMA' => 211,
			'SEMICOLON' => 210
		}
	},
	{#State 250
		ACTIONS => {
			'INTEGER' => 262
		}
	},
	{#State 251
		ACTIONS => {
			'INTEGER' => 263
		}
	},
	{#State 252
		ACTIONS => {
			'INTEGER' => 264
		}
	},
	{#State 253
		ACTIONS => {
			'ATOM' => 265
		}
	},
	{#State 254
		ACTIONS => {
			'COMMA' => 123
		},
		DEFAULT => -119
	},
	{#State 255
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 266,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 256
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 245,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 243,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 246,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'catchalt' => 267,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 257
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 268,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 258
		ACTIONS => {
			'RARROW' => 269,
			'COMMA' => 211,
			'SEMICOLON' => 210
		}
	},
	{#State 259
		DEFAULT => -120
	},
	{#State 260
		DEFAULT => -126
	},
	{#State 261
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'stmtlist' => 270,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 262
		DEFAULT => -96
	},
	{#State 263
		DEFAULT => -97
	},
	{#State 264
		DEFAULT => -98
	},
	{#State 265
		DEFAULT => -116
	},
	{#State 266
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'KW_WHEN' => 142,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 271
		}
	},
	{#State 267
		DEFAULT => -128
	},
	{#State 268
		ACTIONS => {
			'DIVIDE' => 90,
			'KW_ORELSE' => 91,
			'KW_ANDALSO' => 92,
			'KW_OR' => 93,
			'MULTIPLY' => 94,
			'EQUAL' => 95,
			'SUBTRACT' => 96,
			'LTE' => 97,
			'LARROW' => 98,
			'KW_BAND' => 99,
			'KW_WHEN' => 142,
			'LISTADD' => 100,
			'SEND' => 101,
			'GTE' => 102,
			'KW_DIV' => 103,
			'LDARROW' => 104,
			'KW_REM' => 105,
			'GT' => 106,
			'MATCH' => 107,
			'LISTSUBTRACT' => 108,
			'EXACTLY_EQUAL' => 109,
			'ADD' => 110,
			'KW_BOR' => 111,
			'LT' => 112,
			'KW_BXOR' => 113,
			'EXACTLY_NOT_EQUAL' => 114,
			'KW_AND' => 115,
			'KW_BSL' => 116,
			'KW_BSR' => 117,
			'NOT_EQUAL' => 118
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 272
		}
	},
	{#State 269
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'stmtlist' => 273,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 270
		ACTIONS => {
			'COMMA' => 123
		},
		DEFAULT => -103
	},
	{#State 271
		ACTIONS => {
			'RARROW' => 274,
			'COMMA' => 211,
			'SEMICOLON' => 210
		}
	},
	{#State 272
		ACTIONS => {
			'RARROW' => 275,
			'COMMA' => 211,
			'SEMICOLON' => 210
		}
	},
	{#State 273
		ACTIONS => {
			'COMMA' => 123
		},
		DEFAULT => -131
	},
	{#State 274
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'stmtlist' => 276,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 275
		ACTIONS => {
			'OPENRECORD' => 13,
			'OPENBINARY' => 14,
			'VARIABLE' => 42,
			'LPAREN' => 15,
			'TUPLEOPEN' => 43,
			'KW_BEGIN' => 44,
			'LITERAL' => 45,
			'BASE_INTEGER' => 17,
			'STRING' => 47,
			'KW_RECEIVE' => 21,
			'LISTOPEN' => 49,
			'FLOAT' => 51,
			'KW_CASE' => 26,
			'INTEGER' => 28,
			'KW_TRY' => 52,
			'ATOM' => 29,
			'SUBTRACT' => 30,
			'KW_NOT' => 53,
			'KW_IF' => 31,
			'KW_FUN' => 56,
			'MACRO' => 35,
			'KW_CATCH' => 38
		},
		GOTOS => {
			'funlocal' => 39,
			'newrecord' => 40,
			'variable' => 41,
			'string' => 16,
			'case' => 46,
			'fun' => 18,
			'comprehension' => 20,
			'if' => 19,
			'expr' => 48,
			'unparenexpr' => 22,
			'atom' => 23,
			'extcall' => 24,
			'call' => 50,
			'list' => 27,
			'stmtlist' => 277,
			'binary' => 32,
			'parenexpr' => 55,
			'receive' => 33,
			'parenorimm' => 34,
			'try' => 57,
			'tuple' => 58,
			'intcall' => 59,
			'macro' => 36,
			'immexpr' => 37
		}
	},
	{#State 276
		ACTIONS => {
			'COMMA' => 123
		},
		DEFAULT => -129
	},
	{#State 277
		ACTIONS => {
			'COMMA' => 123
		},
		DEFAULT => -130
	}
],
                                  yyrules  =>
[
	[#Rule 0
		 '$start', 2, undef
	],
	[#Rule 1
		 'root', 0,
sub
#line 69 "lib/Erlang/Parser/Parser.yp"
{ [] }
	],
	[#Rule 2
		 'root', 2,
sub
#line 70 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[2]] }
	],
	[#Rule 3
		 'rootstmt', 6,
sub
#line 74 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Directive', directive => $_[2], args => $_[4] }
	],
	[#Rule 4
		 'rootstmt', 2,
sub
#line 75 "lib/Erlang/Parser/Parser.yp"
{ $_[1] }
	],
	[#Rule 5
		 'deflist', 1,
sub
#line 79 "lib/Erlang/Parser/Parser.yp"
{ new_node('DefList')->_append($_[1]) }
	],
	[#Rule 6
		 'deflist', 3,
sub
#line 80 "lib/Erlang/Parser/Parser.yp"
{ $_[1]->_append($_[3]) }
	],
	[#Rule 7
		 'def', 7,
sub
#line 84 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Def', def => $_[1], args => $_[3], whens => $_[5]->_group, stmts => $_[7] }
	],
	[#Rule 8
		 'whenlist', 0,
sub
#line 88 "lib/Erlang/Parser/Parser.yp"
{ new_node 'WhenList' }
	],
	[#Rule 9
		 'whenlist', 2,
sub
#line 89 "lib/Erlang/Parser/Parser.yp"
{ new_node('WhenList')->_append($_[2]) }
	],
	[#Rule 10
		 'whenlist', 3,
sub
#line 91 "lib/Erlang/Parser/Parser.yp"
{ $_[1]->_append($_[3]) }
	],
	[#Rule 11
		 'whenlist', 3,
sub
#line 92 "lib/Erlang/Parser/Parser.yp"
{ $_[1]->_group->_append($_[3]) }
	],
	[#Rule 12
		 'exprlist', 0,
sub
#line 97 "lib/Erlang/Parser/Parser.yp"
{ [] }
	],
	[#Rule 13
		 'exprlist', 1,
sub
#line 98 "lib/Erlang/Parser/Parser.yp"
{ $_[1] }
	],
	[#Rule 14
		 'stmtlist', 1,
sub
#line 102 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 15
		 'stmtlist', 3,
sub
#line 103 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 16
		 'unparenexpr', 1, undef
	],
	[#Rule 17
		 'unparenexpr', 1, undef
	],
	[#Rule 18
		 'unparenexpr', 1, undef
	],
	[#Rule 19
		 'unparenexpr', 1, undef
	],
	[#Rule 20
		 'unparenexpr', 1, undef
	],
	[#Rule 21
		 'unparenexpr', 1, undef
	],
	[#Rule 22
		 'unparenexpr', 1, undef
	],
	[#Rule 23
		 'unparenexpr', 1, undef
	],
	[#Rule 24
		 'unparenexpr', 3,
sub
#line 115 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Begin', exprs => $_[2] }
	],
	[#Rule 25
		 'unparenexpr', 3,
sub
#line 116 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '!',       a => $_[1], b => $_[3] }
	],
	[#Rule 26
		 'unparenexpr', 3,
sub
#line 117 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '<',       a => $_[1], b => $_[3] }
	],
	[#Rule 27
		 'unparenexpr', 3,
sub
#line 118 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '=<',      a => $_[1], b => $_[3] }
	],
	[#Rule 28
		 'unparenexpr', 3,
sub
#line 119 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '>',       a => $_[1], b => $_[3] }
	],
	[#Rule 29
		 'unparenexpr', 3,
sub
#line 120 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '>=',      a => $_[1], b => $_[3] }
	],
	[#Rule 30
		 'unparenexpr', 3,
sub
#line 121 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '/',       a => $_[1], b => $_[3] }
	],
	[#Rule 31
		 'unparenexpr', 3,
sub
#line 122 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'div',     a => $_[1], b => $_[3] }
	],
	[#Rule 32
		 'unparenexpr', 3,
sub
#line 123 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '*',       a => $_[1], b => $_[3] }
	],
	[#Rule 33
		 'unparenexpr', 3,
sub
#line 124 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '+',       a => $_[1], b => $_[3] }
	],
	[#Rule 34
		 'unparenexpr', 3,
sub
#line 125 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '-',       a => $_[1], b => $_[3] }
	],
	[#Rule 35
		 'unparenexpr', 3,
sub
#line 126 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '=',       a => $_[1], b => $_[3] }
	],
	[#Rule 36
		 'unparenexpr', 3,
sub
#line 127 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '++',      a => $_[1], b => $_[3] }
	],
	[#Rule 37
		 'unparenexpr', 3,
sub
#line 128 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '--',      a => $_[1], b => $_[3] }
	],
	[#Rule 38
		 'unparenexpr', 3,
sub
#line 129 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '==',      a => $_[1], b => $_[3] }
	],
	[#Rule 39
		 'unparenexpr', 3,
sub
#line 130 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '=:=',     a => $_[1], b => $_[3] }
	],
	[#Rule 40
		 'unparenexpr', 3,
sub
#line 131 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '=/=',     a => $_[1], b => $_[3] }
	],
	[#Rule 41
		 'unparenexpr', 3,
sub
#line 132 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '/=',      a => $_[1], b => $_[3] }
	],
	[#Rule 42
		 'unparenexpr', 3,
sub
#line 133 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'bsl',     a => $_[1], b => $_[3] }
	],
	[#Rule 43
		 'unparenexpr', 3,
sub
#line 134 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'bsr',     a => $_[1], b => $_[3] }
	],
	[#Rule 44
		 'unparenexpr', 3,
sub
#line 135 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'bor',     a => $_[1], b => $_[3] }
	],
	[#Rule 45
		 'unparenexpr', 3,
sub
#line 136 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'band',    a => $_[1], b => $_[3] }
	],
	[#Rule 46
		 'unparenexpr', 3,
sub
#line 137 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'bxor',    a => $_[1], b => $_[3] }
	],
	[#Rule 47
		 'unparenexpr', 3,
sub
#line 138 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'rem',     a => $_[1], b => $_[3] }
	],
	[#Rule 48
		 'unparenexpr', 3,
sub
#line 139 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'andalso', a => $_[1], b => $_[3] }
	],
	[#Rule 49
		 'unparenexpr', 3,
sub
#line 140 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'orelse',  a => $_[1], b => $_[3] }
	],
	[#Rule 50
		 'unparenexpr', 3,
sub
#line 141 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'and',     a => $_[1], b => $_[3] }
	],
	[#Rule 51
		 'unparenexpr', 3,
sub
#line 142 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'or',      a => $_[1], b => $_[3] }
	],
	[#Rule 52
		 'unparenexpr', 2,
sub
#line 143 "lib/Erlang/Parser/Parser.yp"
{ new_node 'UnOp',  op => '-',       a => $_[2] }
	],
	[#Rule 53
		 'unparenexpr', 2,
sub
#line 144 "lib/Erlang/Parser/Parser.yp"
{ new_node 'UnOp',  op => 'not',     a => $_[2] }
	],
	[#Rule 54
		 'unparenexpr', 2,
sub
#line 145 "lib/Erlang/Parser/Parser.yp"
{ new_node 'UnOp',  op => 'catch',   a => $_[2] }
	],
	[#Rule 55
		 'unparenexpr', 3,
sub
#line 148 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '<-', a => $_[1], b => $_[3] }
	],
	[#Rule 56
		 'unparenexpr', 3,
sub
#line 149 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '<=', a => $_[1], b => $_[3] }
	],
	[#Rule 57
		 'unparenexpr', 1, undef
	],
	[#Rule 58
		 'parenexpr', 3,
sub
#line 155 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 59
		 'expr', 1, undef
	],
	[#Rule 60
		 'expr', 1, undef
	],
	[#Rule 61
		 'parenorimm', 1, undef
	],
	[#Rule 62
		 'parenorimm', 1, undef
	],
	[#Rule 63
		 'immexpr', 1,
sub
#line 169 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Float', float => $_[1] }
	],
	[#Rule 64
		 'immexpr', 1,
sub
#line 170 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BaseInteger', baseinteger => $_[1] }
	],
	[#Rule 65
		 'immexpr', 1,
sub
#line 171 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Integer', int => $_[1] }
	],
	[#Rule 66
		 'immexpr', 1, undef
	],
	[#Rule 67
		 'immexpr', 3,
sub
#line 173 "lib/Erlang/Parser/Parser.yp"
{ new_node 'VariableRecordAccess', variable => $_[1], record => $_[3] }
	],
	[#Rule 68
		 'immexpr', 2,
sub
#line 174 "lib/Erlang/Parser/Parser.yp"
{ new_node 'VariableRecordUpdate', variable => $_[1], update => $_[2] }
	],
	[#Rule 69
		 'immexpr', 1,
sub
#line 175 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Literal', literal => substr($_[1], 1) }
	],
	[#Rule 70
		 'immexpr', 1, undef
	],
	[#Rule 71
		 'immexpr', 1, undef
	],
	[#Rule 72
		 'immexpr', 1, undef
	],
	[#Rule 73
		 'immexpr', 1, undef
	],
	[#Rule 74
		 'immexpr', 1, undef
	],
	[#Rule 75
		 'immexpr', 1, undef
	],
	[#Rule 76
		 'atom', 1,
sub
#line 185 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Atom', atom => $_[1] }
	],
	[#Rule 77
		 'macro', 1,
sub
#line 189 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Macro', macro => substr($_[1], 1) }
	],
	[#Rule 78
		 'variable', 1,
sub
#line 193 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Variable', variable => $_[1] }
	],
	[#Rule 79
		 'string', 1,
sub
#line 197 "lib/Erlang/Parser/Parser.yp"
{ new_node 'String', string => $_[1] }
	],
	[#Rule 80
		 'string', 2,
sub
#line 198 "lib/Erlang/Parser/Parser.yp"
{ $_[1]->_append($_[2]) }
	],
	[#Rule 81
		 'call', 1, undef
	],
	[#Rule 82
		 'call', 1, undef
	],
	[#Rule 83
		 'intcall', 4,
sub
#line 207 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Call', function => $_[1], args => $_[3] }
	],
	[#Rule 84
		 'extcall', 3,
sub
#line 211 "lib/Erlang/Parser/Parser.yp"
{ $_[3]->module($_[1]); $_[3] }
	],
	[#Rule 85
		 'list', 4,
sub
#line 215 "lib/Erlang/Parser/Parser.yp"
{ new_node 'List', elems => $_[2], cdr => $_[3] }
	],
	[#Rule 86
		 'listcdr', 0,
sub
#line 220 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 87
		 'listcdr', 2,
sub
#line 221 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 88
		 'comprehension', 5,
sub
#line 225 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Comprehension', output => $_[2], generators => $_[4] }
	],
	[#Rule 89
		 'comprehension', 5,
sub
#line 226 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Comprehension', output => $_[2], generators => $_[4], binary => 1 }
	],
	[#Rule 90
		 'tuple', 3,
sub
#line 230 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Tuple', elems => $_[2] }
	],
	[#Rule 91
		 'case', 5,
sub
#line 234 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Case', of => $_[2], alts => $_[4] }
	],
	[#Rule 92
		 'altlist', 1,
sub
#line 238 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 93
		 'altlist', 3,
sub
#line 239 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 94
		 'alt', 4,
sub
#line 243 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Alt', expr => $_[1], whens => $_[2]->_group, stmts => $_[4] }
	],
	[#Rule 95
		 'fun', 1, undef
	],
	[#Rule 96
		 'fun', 6,
sub
#line 248 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunRef', module => $_[2], function => $_[4], arity => $_[6] }
	],
	[#Rule 97
		 'fun', 6,
sub
#line 249 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunRef', module => $_[2], function => $_[4], arity => $_[6] }
	],
	[#Rule 98
		 'fun', 6,
sub
#line 250 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunRef', module => $_[2], function => $_[4], arity => $_[6] }
	],
	[#Rule 99
		 'fun', 4,
sub
#line 251 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunRef', function => $_[2], arity => $_[4] }
	],
	[#Rule 100
		 'funlocal', 3,
sub
#line 255 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunLocal', cases => $_[2] }
	],
	[#Rule 101
		 'funlocallist', 1,
sub
#line 260 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 102
		 'funlocallist', 3,
sub
#line 261 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 103
		 'funlocalcase', 6,
sub
#line 265 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunLocalCase', args => $_[2], whens => $_[4]->_group, stmts => $_[6] }
	],
	[#Rule 104
		 'newrecord', 5,
sub
#line 269 "lib/Erlang/Parser/Parser.yp"
{ new_node 'RecordNew', record => $_[2], exprs => $_[4] }
	],
	[#Rule 105
		 'binary', 3,
sub
#line 273 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Binary', bexprs => $_[2] }
	],
	[#Rule 106
		 'optbinarylist', 0,
sub
#line 278 "lib/Erlang/Parser/Parser.yp"
{ [] }
	],
	[#Rule 107
		 'optbinarylist', 1, undef
	],
	[#Rule 108
		 'binarylist', 1,
sub
#line 283 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 109
		 'binarylist', 3,
sub
#line 284 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 110
		 'binaryexpr', 3,
sub
#line 288 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinaryExpr', output => $_[1], size => $_[2], qualifier => $_[3] }
	],
	[#Rule 111
		 'optbinarysize', 0,
sub
#line 293 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 112
		 'optbinarysize', 2,
sub
#line 294 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 113
		 'optbinaryqualifier', 0,
sub
#line 298 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 114
		 'optbinaryqualifier', 2,
sub
#line 299 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 115
		 'binaryqualifier', 1, undef
	],
	[#Rule 116
		 'binaryqualifier', 3,
sub
#line 304 "lib/Erlang/Parser/Parser.yp"
{ "$_[1]-$_[3]" }
	],
	[#Rule 117
		 'receive', 4,
sub
#line 308 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Receive', alts => $_[2], aft => $_[3] }
	],
	[#Rule 118
		 'after', 0,
sub
#line 313 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 119
		 'after', 4,
sub
#line 314 "lib/Erlang/Parser/Parser.yp"
{ new_node 'ReceiveAfter', time => $_[2], stmts => $_[4] }
	],
	[#Rule 120
		 'try', 6,
sub
#line 318 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Try', exprs => $_[2], of => $_[3], catch => $_[4], aft => $_[5] }
	],
	[#Rule 121
		 'opttryof', 0,
sub
#line 323 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 122
		 'opttryof', 2,
sub
#line 324 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 123
		 'opttrycatch', 0,
sub
#line 328 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 124
		 'opttrycatch', 2,
sub
#line 329 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 125
		 'opttryafter', 0,
sub
#line 333 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 126
		 'opttryafter', 2,
sub
#line 334 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 127
		 'catchaltlist', 1,
sub
#line 338 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 128
		 'catchaltlist', 3,
sub
#line 339 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 129
		 'catchalt', 6,
sub
#line 343 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Alt', catch => 1, class => $_[1], expr => $_[3], whens => $_[4]->_group, stmts => $_[6] }
	],
	[#Rule 130
		 'catchalt', 6,
sub
#line 344 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Alt', catch => 1, class => $_[1], expr => $_[3], whens => $_[4]->_group, stmts => $_[6] }
	],
	[#Rule 131
		 'catchalt', 4,
sub
#line 345 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Alt', catch => 1, expr => $_[1], whens => $_[2]->_group, stmts => $_[4] }
	],
	[#Rule 132
		 'if', 3,
sub
#line 349 "lib/Erlang/Parser/Parser.yp"
{ new_node 'If', cases => $_[2] }
	],
	[#Rule 133
		 'iflist', 1,
sub
#line 353 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 134
		 'iflist', 3,
sub
#line 354 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 135
		 'ifexpr', 3,
sub
#line 358 "lib/Erlang/Parser/Parser.yp"
{ new_node 'IfExpr', seq => $_[1], stmts => $_[3] }
	],
	[#Rule 136
		 'ifseq', 1,
sub
#line 362 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 137
		 'ifseq', 3,
sub
#line 363 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	]
],
                                  @_);
    bless($self,$class);
}

#line 365 "lib/Erlang/Parser/Parser.yp"


=over 4

=item C<new>

Creates a new parser object. See L<Parse::Yapp> for more information.

=item C<new_node>

Helper function used to create new nodes.

    # These are identical.
    my $n1 = new_node('X', @y);
    my $n2 = Erlang::Parser::Node::X->new(@y);

=cut

1;

# vim: set sw=4 filetype=perl:

1;
