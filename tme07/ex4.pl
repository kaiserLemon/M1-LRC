pere(pepin,charlemagne).
pere(pepin,carloman).
pere(charles,pepin).
pere(caribert,berthe).
pere(jb,flx).
pere(se,and).

mere(berthe,charlemagne).
mere(berthe,carloman).
mere(rotrude,pepin).
mere(gisele,berthe).
mere(fab,flx).
mere(sy,and).

frereOuSoeur(X,Y) :- parent(A,B,X),parent(A,B,Y),X\=Y.
/*frereOuSoeur(X,Y) :- frereOuSoeur(Y,X).*/

parent(X,Y) :- pere(X,Y).
parent(X,Y) :- mere(X,Y).

parent(X,Y,Z) :- pere(X,Z),mere(Y,Z).
/*parent(X,Y,A) :- parent(X,Y,B),frereOuSoeur(A,B).*/

grandPere(X,Z) :- pere(X,Y),pere(Y,Z).
grandPere(X,Z) :- pere(X,Y),mere(Y,Z).

ancetre(X,Y) :- parent(X,Y).
ancetre(X,Y) :- ancetre(X,Z),parent(Z,Y).