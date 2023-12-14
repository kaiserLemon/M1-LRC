concatene([],L,L).
concatene([X|L1],L2,[X|Lres]) :- concatene(L1,L2,Lres).

inverse([],[]).
inverse([X],[X]).
inverse([X|L],Lres) :- inverse(L,L1),concatene(L1,[X],Lres).

supprime([],_,[]).
supprime([X|L],X,Lres) :- supprime(L,X,Lres).
supprime([Y|L],X,[Y|Lres]) :- Y \= X , supprime(L,X,Lres).

filtre([],L,[]).
filtre([X|L1],[X|L2],Lres) :- filtre(L1,[X|L2],Lres).
filtre([X|L1],[Y|L2],Lres) :-  Y\=X, filtre([X|L1],L3,Lres), concatene(L2,[Y],L3).
filtre([X|L1],[Y|L2],[X|Lres]) :- Y\=X, filtre(L1,[Y|L2],Lres).