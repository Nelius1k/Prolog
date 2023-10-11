happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

dances(alice) :-
    happy(alice),
    with_albert(alice).

male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).
 
female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).
 
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).
 
parent(bob, carl).
parent(bob, charlie).

%custom predicate
get_grandchild :- 
    parent(albert, X),
    parent(X, Y),
    write('Albert\'s grandchild is: '),
    write(Y), nl.

get_grandparent :-
    parent(X, carl),
    parent(X, charlie),
    format('~w ~s grandparent ~n', [X, "is the"]).

brother(bob, bill).

get_uncle :-
    parent(X, carl),
    brother(X, Y),
    format('~w ~s Carl\'s uncle ~n', [Y, "is"]).

% Y is the grandparent of X if Z is the parent of X and Y is the parent of Z
grandparent(X, Y) :-
    parent(Z, X),
    parent(Y, Z).

    

