%{
#include <iostream>
using namespace std;
%}

%x COMMENT
%option noyywrap
%%

"//".* {
    cout << "Single-line comment: " << yytext << endl;
}

"/*" {
    BEGIN(COMMENT);
}

<COMMENT>"*/" {
    BEGIN(INITIAL);
    cout << "Multi-line comment: " << yytext << endl;
}

. {
    cout << "Non-comment line: " << yytext << endl;
}

\n {
    
}

%%


