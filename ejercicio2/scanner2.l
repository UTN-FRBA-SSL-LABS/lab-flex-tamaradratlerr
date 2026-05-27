%pointer
%option noyywrap

 /* ── Sección de definiciones ERX ─────────────────────────────────────── */

digitoHexa      [0-9a-fA-F]

 /* TODO 1: Definir digito */
digito          [0-9]

 /* TODO 2: Definir letra */
letra           [a-zA-Z_]

 /* TODO 3: Definir identificador */
identificador   {letra}({letra}|{digito})*

%%

 /* ── Reglas usando las definiciones ─────────────────────────────────── */

 /* Ejemplo: Hexadecimal */
0[xX]{digitoHexa}+  { printf("constante hexadecimal de longitud %d: %s\n", yyleng, yytext); }

 /* TODO 4: Constante decimal */
[1-9]{digito}* { printf("constante decimal de longitud %d: %s\n", yyleng, yytext); }

 /* TODO 5: Identificador */
{identificador}     { printf("identificador de longitud %d: %s\n", yyleng, yytext); }

 /* Espacios y comodín */
[ \t\n]+            { }
.                   { printf("caracter no reconocido: %s\n", yytext); }

%%

int main(void) {
    yylex();
    return 0;
}