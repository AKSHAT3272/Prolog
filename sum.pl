% define one or more clauses for "sum". The clause must add all elements
% on a list of values.
%
% The clause must take two arguments:
%    arg1 = a list containing numerical values
%    arg2 = the sum of the list
% example:
%    sum( [1,2,3,4], 10 ).
%    true.
% Define below here

sum([],0).
sum([H|T],Sum):-
sum(T,Rest),
Sum is H + Rest.

% Define above here


% leave the main clause in place. This is used to evaluate 
% your work.
main() :-
    findall(X, sum([3,14,15,9,26], X), L),
    write(L).



