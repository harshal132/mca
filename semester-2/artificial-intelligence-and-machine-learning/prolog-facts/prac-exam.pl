likes(pooja,reema).
likes(reema,pooja).
likes(akshata,vighnesh).
likes(vighnesh,rhutika).
likes(tom,vishal).
likes(ben,anagha).
hobby(rani,singing).
hobby(ashish,football).
hobby(yogesh,driving).
activity(singing,rani).
loves(jack,football).
loves(jill,football).

brother(ben,tom).
brother(tom,ben).
parent(tom,george).

uncle(X,Y):- parent(tom,Y);brother(X,tom).
friendship(X,Y) :- likes(X,Y);likes(Y,X).
enemies(X,Y):-not(likes(X,Y)).
happy(X,Y):- hobby(X,Y);activity(Y,X).
friends(X,Y):- loves(X,football);loves(Y,football).
