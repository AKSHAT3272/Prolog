% facts
male(george).
male(william).
male(harry).
male(charles).
male(philip).
male(edward).
male(andrew).
male(mark).
male(peter).
male(james).

female(charlotte).
female(kate).
female(diana).
female(elizabeth).
female(anne).
female(zara).
female(sarah).
female(eugenie).
female(beatrice).
female(sophie).
female(louise).

parent(elizabeth,charles).
parent(elizabeth,anne).
parent(elizabeth,andrew).
parent(elizabeth,edward).
parent(philip,charles).
parent(philip,anne).
parent(philip,andrew).
parent(philip,edward).

parent(diana,william).
parent(diana,harry).
parent(charles,william).
parent(charles,harry).

parent(anne,peter).
parent(anne,zara).
parent(mark,peter).
parent(mark,zara).

parent(andrew,beatrice).
parent(andrew,eugenie).
parent(sarah,beatrice).
parent(sarah,eugenie).

parent(edward,louise).
parent(edward,james).
parent(sophie,louise).
parent(sophie,james).

parent(kate,george).
parent(kate,charlotte).
parent(william,george).
parent(william,charlotte).

grandparent(G, C) :-
        parent(P,C),
        parent(G, P).

grandchild(C, G) :-
        grandparent(G, C).

brother(B, S) :-
        male(B),
        parent(P, B),
        parent(P, S).

sister(S, B) :-
        female(S),
        parent(P, S)
        parent(P, B).

sibling(A, B) :-
        parent(P, A),
        parent(P, B),
        A \= B.

father(F, C) :-
        male(F),
        parent(F,C).

mother(M, C) :-
        female(M),
        parent(M, C).

son(S, P) :-
        male(S),
        parent(P, S).

daughter(D, P) :-
        female(D),
        parent(P, D).

childOf(C, P) :-
        parent(P, C).

grandfather(G, C) :-
        male(G),
        grandparent(G, C).

grandmother(G, C) :-
        female(G),
        grandparent(G, C).

aunt(A, N) :- 
        female(A),
        sibling(A, X),
   parent(X, N).

uncle(U, N) :-
        male(U),
        sibling(U, X),
        parent(X, N).

niece(N, A) :-
        female(N),
        parent(X, N),
        sibling(A, X).

nephew(N, A) :-
        male(N),
        parent(X, N),
        sibling(A, X).

cousin(A, B) :-
        parent(X, A),
        parent(Y, B),
        sibling(X, Y).

ancestor(A, D) :-
        parent(A, D);
        grandparent(A, D);
        grandparent(P, D),
        parent(A, P).

descendant(D, A) :-
        childOf(D, A);
        grandchild(D, A);
        grandchild(P, A),
        childOf(D, P).

