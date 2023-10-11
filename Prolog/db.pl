loves(romeo, juliet).

% "juliet loves romeo if romeo loves juliet"
loves(juliet, romeo) :- loves(romeo, juliet).

% facts
male(albert).
male(john).
male(karl).
male(edward).

female(alice).
female(betsy).
female(diana).

happy(albert).
happy(alice).
happy(karl).

% albert runs if he's happy
runs(albert) :-
    happy(albert).

% alice dances if she's happy AND is a female
dances(alice) :- 
    happy(alice),
    female(alice).

does_alice_dance :- dances(alice),
    write('ALice dances when she\'s happy and because she\'s a female').


