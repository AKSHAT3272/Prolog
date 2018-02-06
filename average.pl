%write a set of clauses that will compute the average of the elements of a list
% name of clause: average
% arg1: list of numerical values
% arg2: average of list.
% example:
%    average([3,14,15,9,26], 13.4).
%    true.
%

%%%% ADD YOUR CODE BELOW THIS LINE
sum([],0).
sum([H|T],Sum):-
sum(T,Rest),
Sum is H + Rest.

len([], 0).
len([_|T], L) :-
len(T, I),
L is 1 + I.

average(L,Avg):- 
sum(L,Sum),
len(L,Len),
Avg is Sum/Len.

%%%% ADD YOUR CODE ABOVE THIS LINE

main() :-
    average([3,14,15,9,26], X),
    average([1,2,3,4,5], Y),
    average([-1, -2, 3, 2, 1, -3], Z),
    writeln(X),
    writeln(Y),
    writeln(Z),
    halt.
