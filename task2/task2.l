%{
#include <iostream>
using namespace std;
%}

%option noyywrap

%%
[a-zA-Z_][a-zA-Z0-9_]* {
    cout << "Valid identifier: " << yytext << endl;
}

. {
    cout << "Invalid identifier: " << yytext << endl;
}
%%

