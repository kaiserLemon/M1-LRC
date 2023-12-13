reviseEx(X) :- serieux(X).
devoirs(X) :- consc(X).
reussi(X) :- reviseEx(X).
serieux(X) :- devoirs(X).
consc(p).
consc(z).