// Thomaz Justo

import java_cup.runtime.Symbol;

%%

%public
%unicode
%class ex1
%cup
%line
%column

%{
    // Helper methods to create Symbol objects for CUP
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }

    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

// Definitions for patterns
FinalLinha = \r|\n|\r\n
Branco = {FinalLinha} | [ \t\f]
Identificador = [a-zA-Z][a-zA-Z0-9]*
Decimal = [0-9]+

%%

"class"          { return symbol(sym.CLASS); }
"void"           { return symbol(sym.VOID); }
"bool"           { return symbol(sym.BOOL); }
"int"            { return symbol(sym.INT); }
"if"             { return symbol(sym.IF); }
"else"           { return symbol(sym.ELSE); }
"while"          { return symbol(sym.WHILE); } // Adicionado suporte ao token 'while'
"return"         { return symbol(sym.RETURN); }
"True"           { return symbol(sym.TRUE); }
"False"          { return symbol(sym.FALSE); }

{Identificador}  { return symbol(sym.IDENTIFICADOR); }
{Decimal}        { return symbol(sym.DECIMAL); }

"=="             { return symbol(sym.OPERA_IGUAL); }
"="              { return symbol(sym.IGUAL); }
"+"              { return symbol(sym.SOMA); }
"*"              { return symbol(sym.MULTIPLICACAO); }
"{"              { return symbol(sym.CHAVEESQ); }
"}"              { return symbol(sym.CHAVEDIR); }
"("              { return symbol(sym.PARESQ); }
")"              { return symbol(sym.PARDIR); }
";"              { return symbol(sym.PONTOVIRG); }
","              { return symbol(sym.VIRG); }

{Branco}         { /* Ignore whitespace */ }

[^]              { System.out.println("Caractere ilegal encontrado: " + yytext()); }
