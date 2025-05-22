# Evidence 4.
## Demonstration of a Programming Paradigm
Frida Alexia Arcadia Luna A01711615
---
# Context & Description

For this evidence, I have chosen to work with a Leetcode problem using the Logic Paradigm and Prolog Language. I chose to work with Leetcode because, in my experience, companies more often than not choose to use this kind of problems for interviews.

I will be working on the problem '350. Intersection of two arrays II', which states the following:

![image](https://github.com/user-attachments/assets/e931a5b7-127f-4624-a54e-53d7de5409ae)

Given that Leetcode doesn't work with prolog language, the platform won't verify my answer, but I will work with the same test cases to prove that my code works, besides adding some other to complement the answers.

# Logic

To develop the function that will resolve the problem, I will use an auxiliar function called 'find', that will identify if the elements of the first list are inside the second list.

    find(X, [X|_T].

    find(X, [_H|T]):- 
 
       find(X, T).

The proper intersect function is the following:

    intersect([],_,[]).

    intersect([H1|T1], L2, [H1|R]):-

        find(H1, L2),
    
        !,
    
        intersect(T1, L2, R).
    
    intersect([_H1|T1], L2, R):-

        intersect(T1, L2, R).`

The following diagram explains how the function works step by step.
