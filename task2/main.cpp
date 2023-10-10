#include <iostream>
using namespace std;


#include "lexer_header.h"


#undef yywrap

extern "C" int yywrap() {
    return 1; 
}

int main() {
    yylex();
    return 0;
}

