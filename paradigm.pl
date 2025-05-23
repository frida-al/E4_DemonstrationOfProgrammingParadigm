% Auxiliar function 'find' that looks up the element of the first list in the second
find(X, [X|_T]).
find(X, [_H|T]):-
	find(X,T).

% Intersect function
intersect([],_,[]). % Base case
intersect([H1|T1], L2, [H1|R]):- % Second clause
    find(H1, L2),
    !, % Stop backtracking, keep only the first match of an answer
    intersect(T1, L2, R).
intersect([_H1|T1], L2, R):- % Third clause
    intersect(T1, L2, R).

% Test cases
list1:- 
    write('Test case 1:'), nl,
    write('Expected: [2,2]'), nl,
    intersect([1,2,2,1], [2,2], X),
	write('Result: '), write(X).

list2:-
    write('Test case 2:'), nl,
    write('Expected: [4, 9]'), nl,
    intersect([4,9,5], [9,4,9,8,4], X),
	write('Result: '), write(X), nl.

list3:-
    write('Test case 3:'), nl,
    write('Expected: [11]'), nl,
    intersect([1,3,5,7,9,11,13], [2,4,6,8,10,11], X),
	write('Result: '), write(X), nl.

list4:-
    write('Test case 4:'), nl,
    write('Expected: []'), nl,
    intersect([], [], X),
	write('Result: '), write(X), nl.

list5:-
    write('Test case 5:'), nl,
    write('Expected: [1, 2, 3, 4, 5, 6, 7, 8, 9]'), nl,
    intersect([1,2,3,4,5,6,7,8,9], [9,8,7,6,5,4,3,2,1], X),
	write('Result: '), write(X), nl.

list6:-
    write('Test case 6:'), nl,
    write('Expected: [73, 90, 61, 27, 174, 52, 65, 36, 40, 29, 125, 38, 44, 105, 95, 107, 13, 37, 3, 92, 26, 123, 51, 167, 128, 18, 54, 117, 191, 48, 79, 157, 120, 139, 27, 31, 14, 115, 6, 19, 87, 15, 150, 10, 70, 72, 11, 4]'), nl,
    intersect([73,187,90,22,198,8,143,17,61,27,42,156,174,52,65,36,40,29,153,125,38,44,130,47,105,88,75,95,107,195,13,171,37,5,3,188,134,92,94,66,176,145,135,77,26,144,160,123,51,110,167,97,111,186,62,34,132,41,128,18,54,117,191,48,79,184,106,157,120,59,28,101,139,27,16,124,83,31,14,112,96,115,98,6,19,87,15,150,181,104,10,70,21,46,72,49,11,1,4,109], [56,61,102,172,157,123,40,180,68,10,200,11,79,14,146,95,164,163,9,115,56,90,72,43,139,3,50,6,73,54,85,189,19,155,113,53,82,193,53,15,172,118,128,136,36,38,174,55,166,89,191,154,31,78,44,105,2,137,162,169,175,150,71,52,120,18,169,128,26,68,177,93,167,33,13,48,117,84,12,65,141,121,158,29,37,141,107,48,70,196,87,51,140,30,4,44,125,92,39,27], X),
	write('Result: '), write(X), nl.

list7:- 
    write('Test case 7:'), nl,
    write('Expected: []'), nl,
    intersect([1,2,3,4,5,6,7,8,9], [10,11,12,13,14,15,16,17,18,19], X),
	write('Result: '), write(X), nl.

list8:-
    write('Test case 7:'), nl,
    write('Expected: [3,4]'), nl,
    intersect([1,2,3,4], [3,4,5,6], X),
	write('Result: '), write(X), nl.
