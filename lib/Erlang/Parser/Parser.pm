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

#line 21 "lib/Erlang/Parser/Parser.yp"

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
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'LITERAL' => 46,
			'KW_BEGIN' => 45,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 26,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 11
		ACTIONS => {
			'LPAREN' => 62
		}
	},
	{#State 12
		DEFAULT => -6
	},
	{#State 13
		ACTIONS => {
			'ATOM' => 30
		},
		GOTOS => {
			'atom' => 63
		}
	},
	{#State 14
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 64,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 15
		ACTIONS => {
			'INTEGER' => 29,
			'OPENRECORD' => 13,
			'ATOM' => 30,
			'OPENBINARY' => 65,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'MACRO' => 36,
			'LISTOPEN' => 70,
			'FLOAT' => 52
		},
		DEFAULT => -109,
		GOTOS => {
			'binarylist' => 71,
			'newrecord' => 41,
			'variable' => 42,
			'binary' => 67,
			'parenexpr' => 73,
			'binaryexpr' => 72,
			'string' => 17,
			'parenorimm' => 68,
			'atom' => 24,
			'tuple' => 60,
			'optbinarylist' => 66,
			'macro' => 37,
			'list' => 28,
			'immexpr' => 69
		}
	},
	{#State 16
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 74,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 17
		ACTIONS => {
			'STRING' => 75
		},
		DEFAULT => -69
	},
	{#State 18
		DEFAULT => -67
	},
	{#State 19
		DEFAULT => -18
	},
	{#State 20
		DEFAULT => -23
	},
	{#State 21
		DEFAULT => -21
	},
	{#State 22
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'altlist' => 76,
			'expr' => 77,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'alt' => 78,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 23
		DEFAULT => -62
	},
	{#State 24
		DEFAULT => -78
	},
	{#State 25
		DEFAULT => -85
	},
	{#State 26
		ACTIONS => {
			'RPAREN' => 79
		}
	},
	{#State 27
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 80,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 28
		DEFAULT => -73
	},
	{#State 29
		DEFAULT => -68
	},
	{#State 30
		DEFAULT => -79
	},
	{#State 31
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 81,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 32
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'ifseq' => 82,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 84,
			'ifexpr' => 83,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'iflist' => 85,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 33
		DEFAULT => -19
	},
	{#State 34
		DEFAULT => -20
	},
	{#State 35
		ACTIONS => {
			'COLON' => 87,
			'LPAREN' => 86
		}
	},
	{#State 36
		DEFAULT => -80
	},
	{#State 37
		DEFAULT => -76
	},
	{#State 38
		ACTIONS => {
			'LPAREN' => -65,
			'COLON' => -65
		},
		DEFAULT => -16
	},
	{#State 39
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 88,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 40
		DEFAULT => -98
	},
	{#State 41
		DEFAULT => -75
	},
	{#State 42
		ACTIONS => {
			'OPENRECORD' => 89
		},
		DEFAULT => -77,
		GOTOS => {
			'newrecord' => 90
		}
	},
	{#State 43
		DEFAULT => -81
	},
	{#State 44
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 91,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 45
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 92,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 46
		DEFAULT => -72
	},
	{#State 47
		DEFAULT => -17
	},
	{#State 48
		DEFAULT => -82
	},
	{#State 49
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -14
	},
	{#State 50
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 124,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 123,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 51
		DEFAULT => -60
	},
	{#State 52
		DEFAULT => -66
	},
	{#State 53
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 125,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 54
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 126,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 55
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 127,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 56
		ACTIONS => {
			'COMMA' => 128
		},
		DEFAULT => -13
	},
	{#State 57
		ACTIONS => {
			'LPAREN' => -64,
			'COLON' => -64
		},
		DEFAULT => -63
	},
	{#State 58
		ACTIONS => {
			'ATOM' => 131,
			'VARIABLE' => 43,
			'MACRO' => 36,
			'LPAREN' => 129
		},
		GOTOS => {
			'variable' => 134,
			'funlocalcase' => 132,
			'atom' => 130,
			'funlocallist' => 135,
			'macro' => 133
		}
	},
	{#State 59
		DEFAULT => -22
	},
	{#State 60
		DEFAULT => -74
	},
	{#State 61
		DEFAULT => -84
	},
	{#State 62
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 136,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 63
		ACTIONS => {
			'TUPLEOPEN' => 137
		}
	},
	{#State 64
		DEFAULT => -55
	},
	{#State 65
		ACTIONS => {
			'INTEGER' => 29,
			'OPENRECORD' => 13,
			'ATOM' => 30,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'MACRO' => 36,
			'LISTOPEN' => 70,
			'FLOAT' => 52
		},
		DEFAULT => -109,
		GOTOS => {
			'binarylist' => 71,
			'newrecord' => 41,
			'variable' => 42,
			'parenexpr' => 73,
			'binaryexpr' => 72,
			'string' => 17,
			'parenorimm' => 68,
			'atom' => 24,
			'tuple' => 60,
			'optbinarylist' => 66,
			'macro' => 37,
			'list' => 28,
			'immexpr' => 69
		}
	},
	{#State 66
		ACTIONS => {
			'CLOSEBINARY' => 138
		}
	},
	{#State 67
		ACTIONS => {
			'COMPREHENSION' => 139
		}
	},
	{#State 68
		ACTIONS => {
			'COLON' => 141
		},
		DEFAULT => -114,
		GOTOS => {
			'optbinarysize' => 140
		}
	},
	{#State 69
		DEFAULT => -65
	},
	{#State 70
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 123,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 71
		ACTIONS => {
			'COMMA' => 142
		},
		DEFAULT => -110
	},
	{#State 72
		DEFAULT => -111
	},
	{#State 73
		DEFAULT => -64
	},
	{#State 74
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'RPAREN' => 143,
			'SEND' => 106,
			'GTE' => 107,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'KW_DIV' => 108,
			'EQUAL' => 99,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'SUBTRACT' => 100,
			'ADD' => 115,
			'KW_XOR' => 114,
			'LTE' => 101,
			'LT' => 117,
			'KW_BOR' => 116,
			'KW_BXOR' => 118,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BAND' => 104,
			'NOT_EQUAL' => 122,
			'KW_BSR' => 121,
			'LISTADD' => 105
		}
	},
	{#State 75
		DEFAULT => -83
	},
	{#State 76
		ACTIONS => {
			'KW_AFTER' => 146,
			'SEMICOLON' => 145
		},
		DEFAULT => -121,
		GOTOS => {
			'after' => 144
		}
	},
	{#State 77
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'KW_WHEN' => 147,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 148
		}
	},
	{#State 78
		DEFAULT => -95
	},
	{#State 79
		ACTIONS => {
			'KW_WHEN' => 147
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 149
		}
	},
	{#State 80
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'SEND' => 106,
			'GTE' => 107,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'KW_DIV' => 108,
			'EQUAL' => 99,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'KW_OF' => 150,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'SUBTRACT' => 100,
			'ADD' => 115,
			'KW_XOR' => 114,
			'LTE' => 101,
			'LT' => 117,
			'KW_BOR' => 116,
			'KW_BXOR' => 118,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BAND' => 104,
			'NOT_EQUAL' => 122,
			'KW_BSR' => 121,
			'LISTADD' => 105
		}
	},
	{#State 81
		DEFAULT => -53
	},
	{#State 82
		ACTIONS => {
			'RARROW' => 151,
			'COMMA' => 152
		}
	},
	{#State 83
		DEFAULT => -136
	},
	{#State 84
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -139
	},
	{#State 85
		ACTIONS => {
			'KW_END' => 153,
			'SEMICOLON' => 154
		}
	},
	{#State 86
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 155,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 87
		ACTIONS => {
			'INTEGER' => 29,
			'OPENRECORD' => 13,
			'ATOM' => 30,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'MACRO' => 36,
			'LISTOPEN' => 70,
			'FLOAT' => 52
		},
		GOTOS => {
			'newrecord' => 41,
			'variable' => 42,
			'parenexpr' => 73,
			'string' => 17,
			'parenorimm' => 156,
			'atom' => 24,
			'tuple' => 60,
			'intcall' => 157,
			'macro' => 37,
			'list' => 28,
			'immexpr' => 69
		}
	},
	{#State 88
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -57
	},
	{#State 89
		ACTIONS => {
			'ATOM' => 30
		},
		GOTOS => {
			'atom' => 158
		}
	},
	{#State 90
		DEFAULT => -71
	},
	{#State 91
		ACTIONS => {
			'TUPLECLOSE' => 159
		}
	},
	{#State 92
		ACTIONS => {
			'KW_END' => 160
		}
	},
	{#State 93
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 161,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 94
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 162,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 95
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 163,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 96
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 164,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 97
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 165,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 98
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 166,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 99
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 167,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 100
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 168,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 101
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 169,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 102
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 170,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 103
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 171,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 104
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 172,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 105
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 173,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 106
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 174,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 107
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 175,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 108
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 176,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 109
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 177,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 110
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 178,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 111
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 179,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 112
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 180,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 113
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 181,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 114
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 182,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 115
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 183,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 116
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 184,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 117
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 185,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 118
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 186,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 119
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 187,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 120
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 188,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 121
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 189,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 122
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 190,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 123
		ACTIONS => {
			'PIPE' => 191
		},
		DEFAULT => -89,
		GOTOS => {
			'listcdr' => 192
		}
	},
	{#State 124
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'COMPREHENSION' => 193,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -14
	},
	{#State 125
		ACTIONS => {
			'KW_OF' => 195
		},
		DEFAULT => -124,
		GOTOS => {
			'opttryof' => 194
		}
	},
	{#State 126
		DEFAULT => -56
	},
	{#State 127
		DEFAULT => -54
	},
	{#State 128
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 196,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 129
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 197,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 130
		ACTIONS => {
			'COLON' => 198
		}
	},
	{#State 131
		ACTIONS => {
			'DIVIDE' => 199
		},
		DEFAULT => -79
	},
	{#State 132
		DEFAULT => -104
	},
	{#State 133
		ACTIONS => {
			'COLON' => 200
		}
	},
	{#State 134
		ACTIONS => {
			'COLON' => 201
		}
	},
	{#State 135
		ACTIONS => {
			'KW_END' => 202,
			'SEMICOLON' => 203
		}
	},
	{#State 136
		ACTIONS => {
			'RPAREN' => 204
		}
	},
	{#State 137
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 205,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 138
		DEFAULT => -108
	},
	{#State 139
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 206,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 140
		ACTIONS => {
			'DIVIDE' => 207
		},
		DEFAULT => -116,
		GOTOS => {
			'optbinaryqualifier' => 208
		}
	},
	{#State 141
		ACTIONS => {
			'INTEGER' => 29,
			'OPENRECORD' => 13,
			'ATOM' => 30,
			'VARIABLE' => 43,
			'TUPLEOPEN' => 44,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'MACRO' => 36,
			'LISTOPEN' => 70,
			'FLOAT' => 52
		},
		GOTOS => {
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'atom' => 24,
			'tuple' => 60,
			'macro' => 37,
			'list' => 28,
			'immexpr' => 209
		}
	},
	{#State 142
		ACTIONS => {
			'INTEGER' => 29,
			'OPENRECORD' => 13,
			'ATOM' => 30,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'MACRO' => 36,
			'LISTOPEN' => 70,
			'FLOAT' => 52
		},
		GOTOS => {
			'newrecord' => 41,
			'variable' => 42,
			'binaryexpr' => 210,
			'parenexpr' => 73,
			'string' => 17,
			'parenorimm' => 68,
			'atom' => 24,
			'tuple' => 60,
			'macro' => 37,
			'list' => 28,
			'immexpr' => 69
		}
	},
	{#State 143
		DEFAULT => -61
	},
	{#State 144
		ACTIONS => {
			'KW_END' => 211
		}
	},
	{#State 145
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 77,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'alt' => 212,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 146
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 213,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 147
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 214,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 148
		ACTIONS => {
			'RARROW' => 215,
			'COMMA' => 217,
			'SEMICOLON' => 216
		}
	},
	{#State 149
		ACTIONS => {
			'RARROW' => 218,
			'COMMA' => 217,
			'SEMICOLON' => 216
		}
	},
	{#State 150
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'altlist' => 219,
			'expr' => 77,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'alt' => 78,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 151
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'stmtlist' => 220,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 152
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 221,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 153
		DEFAULT => -135
	},
	{#State 154
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'ifseq' => 82,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'ifexpr' => 222,
			'expr' => 84,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 155
		ACTIONS => {
			'RPAREN' => 223
		}
	},
	{#State 156
		ACTIONS => {
			'LPAREN' => 86
		}
	},
	{#State 157
		DEFAULT => -87
	},
	{#State 158
		ACTIONS => {
			'TUPLEOPEN' => 137
		},
		DEFAULT => -70
	},
	{#State 159
		DEFAULT => -93
	},
	{#State 160
		DEFAULT => -24
	},
	{#State 161
		DEFAULT => -30
	},
	{#State 162
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => 107,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => 111,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -50
	},
	{#State 163
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => 107,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => 111,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -49
	},
	{#State 164
		ACTIONS => {
			'DIVIDE' => 93,
			'MULTIPLY' => 97,
			'KW_BAND' => 104,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'KW_AND' => 119
		},
		DEFAULT => -52
	},
	{#State 165
		DEFAULT => -32
	},
	{#State 166
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => undef,
			'EQUAL' => undef,
			'SUBTRACT' => 100,
			'LTE' => undef,
			'STRICTLY_NOT_EQUAL' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => undef,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => undef,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => undef,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -39
	},
	{#State 167
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => undef,
			'EQUAL' => undef,
			'SUBTRACT' => 100,
			'LTE' => undef,
			'STRICTLY_NOT_EQUAL' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => undef,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => undef,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => undef,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -38
	},
	{#State 168
		ACTIONS => {
			'DIVIDE' => 93,
			'MULTIPLY' => 97,
			'KW_BAND' => 104,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'KW_AND' => 119
		},
		DEFAULT => -34
	},
	{#State 169
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => undef,
			'EQUAL' => undef,
			'SUBTRACT' => 100,
			'LTE' => undef,
			'STRICTLY_NOT_EQUAL' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => undef,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => undef,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => undef,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -27
	},
	{#State 170
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => undef,
			'EQUAL' => undef,
			'SUBTRACT' => 100,
			'LTE' => undef,
			'STRICTLY_NOT_EQUAL' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => undef,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => undef,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => undef,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -40
	},
	{#State 171
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => undef,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -58
	},
	{#State 172
		DEFAULT => -45
	},
	{#State 173
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'SUBTRACT' => 100,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121
		},
		DEFAULT => -36
	},
	{#State 174
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -25
	},
	{#State 175
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => undef,
			'EQUAL' => undef,
			'SUBTRACT' => 100,
			'LTE' => undef,
			'STRICTLY_NOT_EQUAL' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => undef,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => undef,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => undef,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -29
	},
	{#State 176
		DEFAULT => -31
	},
	{#State 177
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => undef,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -59
	},
	{#State 178
		DEFAULT => -48
	},
	{#State 179
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => undef,
			'EQUAL' => undef,
			'SUBTRACT' => 100,
			'LTE' => undef,
			'STRICTLY_NOT_EQUAL' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => undef,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => undef,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => undef,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -28
	},
	{#State 180
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -35
	},
	{#State 181
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'SUBTRACT' => 100,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121
		},
		DEFAULT => -37
	},
	{#State 182
		ACTIONS => {
			'DIVIDE' => 93,
			'MULTIPLY' => 97,
			'KW_BAND' => 104,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'KW_AND' => 119
		},
		DEFAULT => -47
	},
	{#State 183
		ACTIONS => {
			'DIVIDE' => 93,
			'MULTIPLY' => 97,
			'KW_BAND' => 104,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'KW_AND' => 119
		},
		DEFAULT => -33
	},
	{#State 184
		ACTIONS => {
			'DIVIDE' => 93,
			'MULTIPLY' => 97,
			'KW_BAND' => 104,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'KW_AND' => 119
		},
		DEFAULT => -44
	},
	{#State 185
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => undef,
			'EQUAL' => undef,
			'SUBTRACT' => 100,
			'LTE' => undef,
			'STRICTLY_NOT_EQUAL' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => undef,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => undef,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => undef,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -26
	},
	{#State 186
		ACTIONS => {
			'DIVIDE' => 93,
			'MULTIPLY' => 97,
			'KW_BAND' => 104,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'KW_AND' => 119
		},
		DEFAULT => -46
	},
	{#State 187
		DEFAULT => -51
	},
	{#State 188
		ACTIONS => {
			'DIVIDE' => 93,
			'MULTIPLY' => 97,
			'KW_BAND' => 104,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'KW_AND' => 119
		},
		DEFAULT => -42
	},
	{#State 189
		ACTIONS => {
			'DIVIDE' => 93,
			'MULTIPLY' => 97,
			'KW_BAND' => 104,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'KW_AND' => 119
		},
		DEFAULT => -43
	},
	{#State 190
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => undef,
			'EQUAL' => undef,
			'SUBTRACT' => 100,
			'LTE' => undef,
			'STRICTLY_NOT_EQUAL' => undef,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'GTE' => undef,
			'KW_DIV' => 108,
			'KW_REM' => 110,
			'GT' => undef,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => undef,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => undef
		},
		DEFAULT => -41
	},
	{#State 191
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 224,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 192
		ACTIONS => {
			'LISTCLOSE' => 225
		}
	},
	{#State 193
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 226,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 194
		ACTIONS => {
			'KW_CATCH' => 227
		},
		DEFAULT => -126,
		GOTOS => {
			'opttrycatch' => 228
		}
	},
	{#State 195
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'altlist' => 229,
			'expr' => 77,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'alt' => 78,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 196
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -15
	},
	{#State 197
		ACTIONS => {
			'RPAREN' => 230
		}
	},
	{#State 198
		ACTIONS => {
			'ATOM' => 231
		}
	},
	{#State 199
		ACTIONS => {
			'INTEGER' => 232
		}
	},
	{#State 200
		ACTIONS => {
			'ATOM' => 233
		}
	},
	{#State 201
		ACTIONS => {
			'ATOM' => 234
		}
	},
	{#State 202
		DEFAULT => -103
	},
	{#State 203
		ACTIONS => {
			'LPAREN' => 129
		},
		GOTOS => {
			'funlocalcase' => 235
		}
	},
	{#State 204
		ACTIONS => {
			'PERIOD' => 236
		}
	},
	{#State 205
		ACTIONS => {
			'TUPLECLOSE' => 237
		}
	},
	{#State 206
		ACTIONS => {
			'CLOSEBINARY' => 238
		}
	},
	{#State 207
		ACTIONS => {
			'ATOM' => 239
		},
		GOTOS => {
			'binaryqualifier' => 240
		}
	},
	{#State 208
		DEFAULT => -113
	},
	{#State 209
		DEFAULT => -115
	},
	{#State 210
		DEFAULT => -112
	},
	{#State 211
		DEFAULT => -120
	},
	{#State 212
		DEFAULT => -96
	},
	{#State 213
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'SEND' => 106,
			'GTE' => 107,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'KW_DIV' => 108,
			'EQUAL' => 99,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'SUBTRACT' => 100,
			'ADD' => 115,
			'KW_XOR' => 114,
			'LTE' => 101,
			'LT' => 117,
			'KW_BOR' => 116,
			'KW_BXOR' => 118,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_AND' => 119,
			'RARROW' => 241,
			'KW_BSL' => 120,
			'KW_BAND' => 104,
			'NOT_EQUAL' => 122,
			'KW_BSR' => 121,
			'LISTADD' => 105
		}
	},
	{#State 214
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -9
	},
	{#State 215
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'stmtlist' => 242,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 216
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 243,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 217
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 244,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 218
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'stmtlist' => 245,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 219
		ACTIONS => {
			'KW_END' => 246,
			'SEMICOLON' => 145
		}
	},
	{#State 220
		ACTIONS => {
			'COMMA' => 128
		},
		DEFAULT => -138
	},
	{#State 221
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -140
	},
	{#State 222
		DEFAULT => -137
	},
	{#State 223
		DEFAULT => -86
	},
	{#State 224
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'SEND' => 106,
			'GTE' => 107,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'KW_DIV' => 108,
			'EQUAL' => 99,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'SUBTRACT' => 100,
			'ADD' => 115,
			'KW_XOR' => 114,
			'LTE' => 101,
			'LT' => 117,
			'KW_BOR' => 116,
			'KW_BXOR' => 118,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BAND' => 104,
			'NOT_EQUAL' => 122,
			'KW_BSR' => 121,
			'LISTADD' => 105
		},
		DEFAULT => -90
	},
	{#State 225
		DEFAULT => -88
	},
	{#State 226
		ACTIONS => {
			'LISTCLOSE' => 247
		}
	},
	{#State 227
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 251,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 249,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 252,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'catchalt' => 248,
			'binary' => 33,
			'parenexpr' => 57,
			'catchaltlist' => 250,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 228
		ACTIONS => {
			'KW_AFTER' => 254
		},
		DEFAULT => -128,
		GOTOS => {
			'opttryafter' => 253
		}
	},
	{#State 229
		ACTIONS => {
			'SEMICOLON' => 145
		},
		DEFAULT => -125
	},
	{#State 230
		ACTIONS => {
			'KW_WHEN' => 147
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 255
		}
	},
	{#State 231
		ACTIONS => {
			'DIVIDE' => 256
		}
	},
	{#State 232
		DEFAULT => -102
	},
	{#State 233
		ACTIONS => {
			'DIVIDE' => 257
		}
	},
	{#State 234
		ACTIONS => {
			'DIVIDE' => 258
		}
	},
	{#State 235
		DEFAULT => -105
	},
	{#State 236
		DEFAULT => -3
	},
	{#State 237
		DEFAULT => -107
	},
	{#State 238
		DEFAULT => -92
	},
	{#State 239
		DEFAULT => -118
	},
	{#State 240
		ACTIONS => {
			'SUBTRACT' => 259
		},
		DEFAULT => -117
	},
	{#State 241
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'stmtlist' => 260,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 242
		ACTIONS => {
			'COMMA' => 128
		},
		DEFAULT => -97
	},
	{#State 243
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -11
	},
	{#State 244
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -10
	},
	{#State 245
		ACTIONS => {
			'COMMA' => 128
		},
		DEFAULT => -7
	},
	{#State 246
		DEFAULT => -94
	},
	{#State 247
		DEFAULT => -91
	},
	{#State 248
		DEFAULT => -130
	},
	{#State 249
		ACTIONS => {
			'COLON' => 261
		},
		DEFAULT => -79
	},
	{#State 250
		ACTIONS => {
			'SEMICOLON' => 262
		},
		DEFAULT => -127
	},
	{#State 251
		ACTIONS => {
			'COLON' => 263
		},
		DEFAULT => -81
	},
	{#State 252
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'KW_WHEN' => 147,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 264
		}
	},
	{#State 253
		ACTIONS => {
			'KW_END' => 265
		}
	},
	{#State 254
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		DEFAULT => -12,
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'exprlist' => 266,
			'list' => 28,
			'stmtlist' => 56,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 255
		ACTIONS => {
			'RARROW' => 267,
			'COMMA' => 217,
			'SEMICOLON' => 216
		}
	},
	{#State 256
		ACTIONS => {
			'INTEGER' => 268
		}
	},
	{#State 257
		ACTIONS => {
			'INTEGER' => 269
		}
	},
	{#State 258
		ACTIONS => {
			'INTEGER' => 270
		}
	},
	{#State 259
		ACTIONS => {
			'ATOM' => 271
		}
	},
	{#State 260
		ACTIONS => {
			'COMMA' => 128
		},
		DEFAULT => -122
	},
	{#State 261
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 272,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 262
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 251,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 249,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 252,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'catchalt' => 273,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 263
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 274,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 264
		ACTIONS => {
			'RARROW' => 275,
			'COMMA' => 217,
			'SEMICOLON' => 216
		}
	},
	{#State 265
		DEFAULT => -123
	},
	{#State 266
		DEFAULT => -129
	},
	{#State 267
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'stmtlist' => 276,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 268
		DEFAULT => -99
	},
	{#State 269
		DEFAULT => -100
	},
	{#State 270
		DEFAULT => -101
	},
	{#State 271
		DEFAULT => -119
	},
	{#State 272
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'KW_WHEN' => 147,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 277
		}
	},
	{#State 273
		DEFAULT => -131
	},
	{#State 274
		ACTIONS => {
			'DIVIDE' => 93,
			'KW_ORELSE' => 94,
			'KW_ANDALSO' => 95,
			'KW_OR' => 96,
			'MULTIPLY' => 97,
			'STRICTLY_EQUAL' => 98,
			'EQUAL' => 99,
			'SUBTRACT' => 100,
			'LTE' => 101,
			'STRICTLY_NOT_EQUAL' => 102,
			'LARROW' => 103,
			'KW_BAND' => 104,
			'KW_WHEN' => 147,
			'LISTADD' => 105,
			'SEND' => 106,
			'GTE' => 107,
			'KW_DIV' => 108,
			'LDARROW' => 109,
			'KW_REM' => 110,
			'GT' => 111,
			'MATCH' => 112,
			'LISTSUBTRACT' => 113,
			'KW_XOR' => 114,
			'ADD' => 115,
			'KW_BOR' => 116,
			'LT' => 117,
			'KW_BXOR' => 118,
			'KW_AND' => 119,
			'KW_BSL' => 120,
			'KW_BSR' => 121,
			'NOT_EQUAL' => 122
		},
		DEFAULT => -8,
		GOTOS => {
			'whenlist' => 278
		}
	},
	{#State 275
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'stmtlist' => 279,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 276
		ACTIONS => {
			'COMMA' => 128
		},
		DEFAULT => -106
	},
	{#State 277
		ACTIONS => {
			'RARROW' => 280,
			'COMMA' => 217,
			'SEMICOLON' => 216
		}
	},
	{#State 278
		ACTIONS => {
			'RARROW' => 281,
			'COMMA' => 217,
			'SEMICOLON' => 216
		}
	},
	{#State 279
		ACTIONS => {
			'COMMA' => 128
		},
		DEFAULT => -134
	},
	{#State 280
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'stmtlist' => 282,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 281
		ACTIONS => {
			'KW_BNOT' => 14,
			'OPENRECORD' => 13,
			'OPENBINARY' => 15,
			'VARIABLE' => 43,
			'LPAREN' => 16,
			'TUPLEOPEN' => 44,
			'KW_BEGIN' => 45,
			'LITERAL' => 46,
			'BASE_INTEGER' => 18,
			'STRING' => 48,
			'KW_RECEIVE' => 22,
			'LISTOPEN' => 50,
			'FLOAT' => 52,
			'KW_CASE' => 27,
			'INTEGER' => 29,
			'KW_TRY' => 53,
			'ATOM' => 30,
			'SUBTRACT' => 31,
			'KW_NOT' => 54,
			'KW_IF' => 32,
			'ADD' => 55,
			'KW_FUN' => 58,
			'MACRO' => 36,
			'KW_CATCH' => 39
		},
		GOTOS => {
			'funlocal' => 40,
			'newrecord' => 41,
			'variable' => 42,
			'string' => 17,
			'case' => 47,
			'fun' => 19,
			'comprehension' => 21,
			'if' => 20,
			'expr' => 49,
			'unparenexpr' => 23,
			'atom' => 24,
			'extcall' => 25,
			'call' => 51,
			'list' => 28,
			'stmtlist' => 283,
			'binary' => 33,
			'parenexpr' => 57,
			'receive' => 34,
			'parenorimm' => 35,
			'try' => 59,
			'tuple' => 60,
			'intcall' => 61,
			'macro' => 37,
			'immexpr' => 38
		}
	},
	{#State 282
		ACTIONS => {
			'COMMA' => 128
		},
		DEFAULT => -132
	},
	{#State 283
		ACTIONS => {
			'COMMA' => 128
		},
		DEFAULT => -133
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
#line 72 "lib/Erlang/Parser/Parser.yp"
{ [] }
	],
	[#Rule 2
		 'root', 2,
sub
#line 73 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[2]] }
	],
	[#Rule 3
		 'rootstmt', 6,
sub
#line 77 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Directive', directive => $_[2], args => $_[4] }
	],
	[#Rule 4
		 'rootstmt', 2,
sub
#line 78 "lib/Erlang/Parser/Parser.yp"
{ $_[1] }
	],
	[#Rule 5
		 'deflist', 1,
sub
#line 82 "lib/Erlang/Parser/Parser.yp"
{ new_node('DefList')->_append($_[1]) }
	],
	[#Rule 6
		 'deflist', 3,
sub
#line 83 "lib/Erlang/Parser/Parser.yp"
{ $_[1]->_append($_[3]) }
	],
	[#Rule 7
		 'def', 7,
sub
#line 87 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Def', def => $_[1], args => $_[3], whens => $_[5]->_group, stmts => $_[7] }
	],
	[#Rule 8
		 'whenlist', 0,
sub
#line 91 "lib/Erlang/Parser/Parser.yp"
{ new_node 'WhenList' }
	],
	[#Rule 9
		 'whenlist', 2,
sub
#line 92 "lib/Erlang/Parser/Parser.yp"
{ new_node('WhenList')->_append($_[2]) }
	],
	[#Rule 10
		 'whenlist', 3,
sub
#line 94 "lib/Erlang/Parser/Parser.yp"
{ $_[1]->_append($_[3]) }
	],
	[#Rule 11
		 'whenlist', 3,
sub
#line 95 "lib/Erlang/Parser/Parser.yp"
{ $_[1]->_group->_append($_[3]) }
	],
	[#Rule 12
		 'exprlist', 0,
sub
#line 100 "lib/Erlang/Parser/Parser.yp"
{ [] }
	],
	[#Rule 13
		 'exprlist', 1,
sub
#line 101 "lib/Erlang/Parser/Parser.yp"
{ $_[1] }
	],
	[#Rule 14
		 'stmtlist', 1,
sub
#line 105 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 15
		 'stmtlist', 3,
sub
#line 106 "lib/Erlang/Parser/Parser.yp"
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
#line 118 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Begin', exprs => $_[2] }
	],
	[#Rule 25
		 'unparenexpr', 3,
sub
#line 119 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '!',       a => $_[1], b => $_[3] }
	],
	[#Rule 26
		 'unparenexpr', 3,
sub
#line 120 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '<',       a => $_[1], b => $_[3] }
	],
	[#Rule 27
		 'unparenexpr', 3,
sub
#line 121 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '=<',      a => $_[1], b => $_[3] }
	],
	[#Rule 28
		 'unparenexpr', 3,
sub
#line 122 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '>',       a => $_[1], b => $_[3] }
	],
	[#Rule 29
		 'unparenexpr', 3,
sub
#line 123 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '>=',      a => $_[1], b => $_[3] }
	],
	[#Rule 30
		 'unparenexpr', 3,
sub
#line 124 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '/',       a => $_[1], b => $_[3] }
	],
	[#Rule 31
		 'unparenexpr', 3,
sub
#line 125 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'div',     a => $_[1], b => $_[3] }
	],
	[#Rule 32
		 'unparenexpr', 3,
sub
#line 126 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '*',       a => $_[1], b => $_[3] }
	],
	[#Rule 33
		 'unparenexpr', 3,
sub
#line 127 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '+',       a => $_[1], b => $_[3] }
	],
	[#Rule 34
		 'unparenexpr', 3,
sub
#line 128 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '-',       a => $_[1], b => $_[3] }
	],
	[#Rule 35
		 'unparenexpr', 3,
sub
#line 129 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '=',       a => $_[1], b => $_[3] }
	],
	[#Rule 36
		 'unparenexpr', 3,
sub
#line 130 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '++',      a => $_[1], b => $_[3] }
	],
	[#Rule 37
		 'unparenexpr', 3,
sub
#line 131 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '--',      a => $_[1], b => $_[3] }
	],
	[#Rule 38
		 'unparenexpr', 3,
sub
#line 132 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '==',      a => $_[1], b => $_[3] }
	],
	[#Rule 39
		 'unparenexpr', 3,
sub
#line 133 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '=:=',     a => $_[1], b => $_[3] }
	],
	[#Rule 40
		 'unparenexpr', 3,
sub
#line 134 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '=/=',     a => $_[1], b => $_[3] }
	],
	[#Rule 41
		 'unparenexpr', 3,
sub
#line 135 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '/=',      a => $_[1], b => $_[3] }
	],
	[#Rule 42
		 'unparenexpr', 3,
sub
#line 136 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'bsl',     a => $_[1], b => $_[3] }
	],
	[#Rule 43
		 'unparenexpr', 3,
sub
#line 137 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'bsr',     a => $_[1], b => $_[3] }
	],
	[#Rule 44
		 'unparenexpr', 3,
sub
#line 138 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'bor',     a => $_[1], b => $_[3] }
	],
	[#Rule 45
		 'unparenexpr', 3,
sub
#line 139 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'band',    a => $_[1], b => $_[3] }
	],
	[#Rule 46
		 'unparenexpr', 3,
sub
#line 140 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'bxor',    a => $_[1], b => $_[3] }
	],
	[#Rule 47
		 'unparenexpr', 3,
sub
#line 141 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'xor',     a => $_[1], b => $_[3] }
	],
	[#Rule 48
		 'unparenexpr', 3,
sub
#line 142 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'rem',     a => $_[1], b => $_[3] }
	],
	[#Rule 49
		 'unparenexpr', 3,
sub
#line 143 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'andalso', a => $_[1], b => $_[3] }
	],
	[#Rule 50
		 'unparenexpr', 3,
sub
#line 144 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'orelse',  a => $_[1], b => $_[3] }
	],
	[#Rule 51
		 'unparenexpr', 3,
sub
#line 145 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'and',     a => $_[1], b => $_[3] }
	],
	[#Rule 52
		 'unparenexpr', 3,
sub
#line 146 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => 'or',      a => $_[1], b => $_[3] }
	],
	[#Rule 53
		 'unparenexpr', 2,
sub
#line 147 "lib/Erlang/Parser/Parser.yp"
{ new_node 'UnOp',  op => '-',       a => $_[2] }
	],
	[#Rule 54
		 'unparenexpr', 2,
sub
#line 148 "lib/Erlang/Parser/Parser.yp"
{ new_node 'UnOp',  op => '+',       a => $_[2] }
	],
	[#Rule 55
		 'unparenexpr', 2,
sub
#line 149 "lib/Erlang/Parser/Parser.yp"
{ new_node 'UnOp',  op => 'bnot',    a => $_[2] }
	],
	[#Rule 56
		 'unparenexpr', 2,
sub
#line 150 "lib/Erlang/Parser/Parser.yp"
{ new_node 'UnOp',  op => 'not',     a => $_[2] }
	],
	[#Rule 57
		 'unparenexpr', 2,
sub
#line 151 "lib/Erlang/Parser/Parser.yp"
{ new_node 'UnOp',  op => 'catch',   a => $_[2] }
	],
	[#Rule 58
		 'unparenexpr', 3,
sub
#line 154 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '<-', a => $_[1], b => $_[3] }
	],
	[#Rule 59
		 'unparenexpr', 3,
sub
#line 155 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinOp', op => '<=', a => $_[1], b => $_[3] }
	],
	[#Rule 60
		 'unparenexpr', 1, undef
	],
	[#Rule 61
		 'parenexpr', 3,
sub
#line 161 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 62
		 'expr', 1, undef
	],
	[#Rule 63
		 'expr', 1, undef
	],
	[#Rule 64
		 'parenorimm', 1, undef
	],
	[#Rule 65
		 'parenorimm', 1, undef
	],
	[#Rule 66
		 'immexpr', 1,
sub
#line 175 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Float', float => $_[1] }
	],
	[#Rule 67
		 'immexpr', 1,
sub
#line 176 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BaseInteger', baseinteger => $_[1] }
	],
	[#Rule 68
		 'immexpr', 1,
sub
#line 177 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Integer', int => $_[1] }
	],
	[#Rule 69
		 'immexpr', 1, undef
	],
	[#Rule 70
		 'immexpr', 3,
sub
#line 179 "lib/Erlang/Parser/Parser.yp"
{ new_node 'VariableRecordAccess', variable => $_[1], record => $_[3] }
	],
	[#Rule 71
		 'immexpr', 2,
sub
#line 180 "lib/Erlang/Parser/Parser.yp"
{ new_node 'VariableRecordUpdate', variable => $_[1], update => $_[2] }
	],
	[#Rule 72
		 'immexpr', 1,
sub
#line 181 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Literal', literal => substr($_[1], 1) }
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
		 'immexpr', 1, undef
	],
	[#Rule 77
		 'immexpr', 1, undef
	],
	[#Rule 78
		 'immexpr', 1, undef
	],
	[#Rule 79
		 'atom', 1,
sub
#line 191 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Atom', atom => $_[1] }
	],
	[#Rule 80
		 'macro', 1,
sub
#line 195 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Macro', macro => substr($_[1], 1) }
	],
	[#Rule 81
		 'variable', 1,
sub
#line 199 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Variable', variable => $_[1] }
	],
	[#Rule 82
		 'string', 1,
sub
#line 203 "lib/Erlang/Parser/Parser.yp"
{ new_node 'String', string => $_[1] }
	],
	[#Rule 83
		 'string', 2,
sub
#line 204 "lib/Erlang/Parser/Parser.yp"
{ $_[1]->_append($_[2]) }
	],
	[#Rule 84
		 'call', 1, undef
	],
	[#Rule 85
		 'call', 1, undef
	],
	[#Rule 86
		 'intcall', 4,
sub
#line 213 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Call', function => $_[1], args => $_[3] }
	],
	[#Rule 87
		 'extcall', 3,
sub
#line 217 "lib/Erlang/Parser/Parser.yp"
{ $_[3]->module($_[1]); $_[3] }
	],
	[#Rule 88
		 'list', 4,
sub
#line 221 "lib/Erlang/Parser/Parser.yp"
{ new_node 'List', elems => $_[2], cdr => $_[3] }
	],
	[#Rule 89
		 'listcdr', 0,
sub
#line 226 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 90
		 'listcdr', 2,
sub
#line 227 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 91
		 'comprehension', 5,
sub
#line 231 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Comprehension', output => $_[2], generators => $_[4] }
	],
	[#Rule 92
		 'comprehension', 5,
sub
#line 232 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Comprehension', output => $_[2], generators => $_[4], binary => 1 }
	],
	[#Rule 93
		 'tuple', 3,
sub
#line 236 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Tuple', elems => $_[2] }
	],
	[#Rule 94
		 'case', 5,
sub
#line 240 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Case', of => $_[2], alts => $_[4] }
	],
	[#Rule 95
		 'altlist', 1,
sub
#line 244 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 96
		 'altlist', 3,
sub
#line 245 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 97
		 'alt', 4,
sub
#line 249 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Alt', expr => $_[1], whens => $_[2]->_group, stmts => $_[4] }
	],
	[#Rule 98
		 'fun', 1, undef
	],
	[#Rule 99
		 'fun', 6,
sub
#line 254 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunRef', module => $_[2], function => $_[4], arity => $_[6] }
	],
	[#Rule 100
		 'fun', 6,
sub
#line 255 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunRef', module => $_[2], function => $_[4], arity => $_[6] }
	],
	[#Rule 101
		 'fun', 6,
sub
#line 256 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunRef', module => $_[2], function => $_[4], arity => $_[6] }
	],
	[#Rule 102
		 'fun', 4,
sub
#line 257 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunRef', function => $_[2], arity => $_[4] }
	],
	[#Rule 103
		 'funlocal', 3,
sub
#line 261 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunLocal', cases => $_[2] }
	],
	[#Rule 104
		 'funlocallist', 1,
sub
#line 266 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 105
		 'funlocallist', 3,
sub
#line 267 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 106
		 'funlocalcase', 6,
sub
#line 271 "lib/Erlang/Parser/Parser.yp"
{ new_node 'FunLocalCase', args => $_[2], whens => $_[4]->_group, stmts => $_[6] }
	],
	[#Rule 107
		 'newrecord', 5,
sub
#line 275 "lib/Erlang/Parser/Parser.yp"
{ new_node 'RecordNew', record => $_[2], exprs => $_[4] }
	],
	[#Rule 108
		 'binary', 3,
sub
#line 279 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Binary', bexprs => $_[2] }
	],
	[#Rule 109
		 'optbinarylist', 0,
sub
#line 284 "lib/Erlang/Parser/Parser.yp"
{ [] }
	],
	[#Rule 110
		 'optbinarylist', 1, undef
	],
	[#Rule 111
		 'binarylist', 1,
sub
#line 289 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 112
		 'binarylist', 3,
sub
#line 290 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 113
		 'binaryexpr', 3,
sub
#line 294 "lib/Erlang/Parser/Parser.yp"
{ new_node 'BinaryExpr', output => $_[1], size => $_[2], qualifier => $_[3] }
	],
	[#Rule 114
		 'optbinarysize', 0,
sub
#line 299 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 115
		 'optbinarysize', 2,
sub
#line 300 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 116
		 'optbinaryqualifier', 0,
sub
#line 304 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 117
		 'optbinaryqualifier', 2,
sub
#line 305 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 118
		 'binaryqualifier', 1, undef
	],
	[#Rule 119
		 'binaryqualifier', 3,
sub
#line 310 "lib/Erlang/Parser/Parser.yp"
{ "$_[1]-$_[3]" }
	],
	[#Rule 120
		 'receive', 4,
sub
#line 314 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Receive', alts => $_[2], aft => $_[3] }
	],
	[#Rule 121
		 'after', 0,
sub
#line 319 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 122
		 'after', 4,
sub
#line 320 "lib/Erlang/Parser/Parser.yp"
{ new_node 'ReceiveAfter', time => $_[2], stmts => $_[4] }
	],
	[#Rule 123
		 'try', 6,
sub
#line 324 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Try', exprs => $_[2], of => $_[3], catch => $_[4], aft => $_[5] }
	],
	[#Rule 124
		 'opttryof', 0,
sub
#line 329 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 125
		 'opttryof', 2,
sub
#line 330 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 126
		 'opttrycatch', 0,
sub
#line 334 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 127
		 'opttrycatch', 2,
sub
#line 335 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 128
		 'opttryafter', 0,
sub
#line 339 "lib/Erlang/Parser/Parser.yp"
{ undef }
	],
	[#Rule 129
		 'opttryafter', 2,
sub
#line 340 "lib/Erlang/Parser/Parser.yp"
{ $_[2] }
	],
	[#Rule 130
		 'catchaltlist', 1,
sub
#line 344 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 131
		 'catchaltlist', 3,
sub
#line 345 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 132
		 'catchalt', 6,
sub
#line 349 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Alt', catch => 1, class => $_[1], expr => $_[3], whens => $_[4]->_group, stmts => $_[6] }
	],
	[#Rule 133
		 'catchalt', 6,
sub
#line 350 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Alt', catch => 1, class => $_[1], expr => $_[3], whens => $_[4]->_group, stmts => $_[6] }
	],
	[#Rule 134
		 'catchalt', 4,
sub
#line 351 "lib/Erlang/Parser/Parser.yp"
{ new_node 'Alt', catch => 1, expr => $_[1], whens => $_[2]->_group, stmts => $_[4] }
	],
	[#Rule 135
		 'if', 3,
sub
#line 355 "lib/Erlang/Parser/Parser.yp"
{ new_node 'If', cases => $_[2] }
	],
	[#Rule 136
		 'iflist', 1,
sub
#line 359 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 137
		 'iflist', 3,
sub
#line 360 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	],
	[#Rule 138
		 'ifexpr', 3,
sub
#line 364 "lib/Erlang/Parser/Parser.yp"
{ new_node 'IfExpr', seq => $_[1], stmts => $_[3] }
	],
	[#Rule 139
		 'ifseq', 1,
sub
#line 368 "lib/Erlang/Parser/Parser.yp"
{ [$_[1]] }
	],
	[#Rule 140
		 'ifseq', 3,
sub
#line 369 "lib/Erlang/Parser/Parser.yp"
{ [@{$_[1]}, $_[3]] }
	]
],
                                  @_);
    bless($self,$class);
}

#line 371 "lib/Erlang/Parser/Parser.yp"


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

# vim: set sw=4 ts=4 et filetype=perl:

1;
