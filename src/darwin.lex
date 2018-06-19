%name DarwinLexer;

%let digit = [0-9];
%let int = ({digit}+|("-"){digit}+);
%let alpha = [a-zA-Z];
%let alphaChars = [a-zA-Z:\" !@#$%*&0-9]*;
%let booleano = ("true"|"false");
%let id = {alpha}({alpha} | {digit} | "_")*;
%let str = ["]{alphaChars}["];
%let primitivo = ("int"|"string"|"boolean"|"float");
%let lista = ("sample of "({primitivo}));
%let tipo = ({primitivo}|{lista});
%let float = {int}["."]({digit}+|{digit}+("e"|"E"){int});
%let valPrim = ({int} | {str} | {booleano} | {float});
%let empty = "{}";
%let intList = ({empty} | "{" {int} ("," {int})* "}" );
%let floatList = ({empty} | "{" {float} ("," {float})* "}" );
%let booleanList = ({empty} | "{" {booleano} ("," {booleano})* "}" );
%let strList = ({empty} | "{" {str} ("," {str})* "}" );
%defs (
    structure T = DarwinTokens
    type lex_result = T.token
    fun eof() = T.EOF
);

"variables" => ( T.KW_variables );
"title" => ( T.KW_title );
"commands" => ( T.KW_commands );
"print" => ( T.KW_Print );
"sum" => ( T.KW_SUM );
"prod" => ( T.KW_PROD );
"toString" => ( T.KW_TOSTRING );
"end variables" => ( T.KW_endvars );
"mean" => ( T.KW_MEAN );
"correlation" => ( T.KW_CORR );
"median" => ( T.KW_MEDIAN );
"stdDeviation" => ( T.KW_STDEV );
"variance" => ( T.KW_VAR );
"getFloat" => ( T.KW_GETF );
"getInt" => ( T.KW_GETI );
"getString" => ( T.KW_GETS );
"toFloat" => (T.KW_TOFLOAT);
"toInt" => (T.KW_TOINT);
"subSample" => ( T.KW_SUBS );
"linearRegression" => (T.KW_LINREG);
"covariance" => (T.KW_COV);
"pow" => (T.KW_POW);
"rt" => (T.KW_RT);
"void" => ( T.VOID );
"if" => ( T.KW_IF );
"then" => ( T.KW_THEN );
"else" => ( T.KW_ELSE );
"while" => ( T.KW_WHILE );
"do" => ( T.KW_DO );
"end" => ( T.KW_END );
{tipo} => ( T.TIPO yytext );
{booleano} => ( T.BOOL (valOf (Bool.fromString yytext)) );
{id} => ( T.ID yytext );
{str} => (T.STR yytext);
{int} => ( T.NUM (valOf (Int.fromString yytext)) );
{float} => ( T.REAL (valOf (Real.fromString yytext)) );
{intList} => (T.SINT (Grammar.toIntList (Grammar.tokenize yytext)));
{floatList} => (T.SFLOAT (Grammar.toFloatList (Grammar.tokenize yytext)));
{booleanList} => (T.SBOOL (Grammar.toBoolList (Grammar.tokenize yytext)));
{strList} => ( T.SSTRING (Grammar.tokenize yytext));
"=" => ( T.EQ );
"==" => ( T.EEQ );
";" => ( T.SEMI);
"+" => ( T.PLUS );
"++" => (T.CONCAT);
"-" => ( T.MINUS );
"*" => ( T.TIMES );
"/" => ( T.DIV );
"(" => ( T.LP );
")" => ( T.RP );
"." => ( T.DOT );
"&&" => ( T.AND );
"||" => ( T.OR );
"!" => ( T.NOT );
">=" => ( T.GEQ );
"<=" => ( T.LEQ );
">" => ( T.GT );
"<" => ( T.LT );
"!=" => ( T.NEQ );
"{}" => ( T.EMPTY );
"," => ( T.COMMA );
":=" => ( T.DOTDOT );
" " | \n | \t  => ( continue() );
"terminate"   => ( T.KW_terminate );
.		=> (print (concat ["Unexpected character: '", yytext,
			           "'\n"]); continue());
