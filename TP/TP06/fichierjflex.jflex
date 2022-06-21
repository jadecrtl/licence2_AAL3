%%
%public
%unicode
%standalone

%line #yyline c'est pour voir le numero de la ligne ou je trouve ce que je veux trouver dans le texte
%column #yycolumn pareil mais indique juste la place du mot dans la ligne, chaques mots est une colonne

%{
        // Java code before execution e.g variables


%}

// ADD Macros here

%{eof

        // Java code after execution e.g prints

%eof}

%%

// Macro and java operation (during execution)

[^] {}

