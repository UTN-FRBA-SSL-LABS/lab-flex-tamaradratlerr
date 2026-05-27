%pointer
%option noyywrap

%%

 /* ── Reglas ya implementadas ────────────────────────── */

 /* Constante octal: 0 seguido de dígitos octales (o solo 0) */
0[0-7]* { printf("constante octal: %s\n", yytext); }

 /* Ignorar espacios, tabs y saltos de línea */
[ \t\n]+         { /* no hace nada */ }

 /* ── TODOs completados ──────────────────────────────── */

 /* TODO 1 — Constante decimal */
[1-9][0-9]* { printf("constante decimal: %s\n", yytext); }

 /* TODO 2 — Constante hexadecimal */
0[xX][0-9A-Fa-f]+ { printf("constante hexadecimal: %s\n", yytext); }

 /* TODO 3 — Identificador */
[a-zA-Z_][a-zA-Z0-9_]* { printf("identificador: %s\n", yytext); }

 /* TODO 4 — Comodín */
.                { printf("caracter no reconocido: %s\n", yytext); }

%%

int main(void) {
    yylex();
    return 0;
}