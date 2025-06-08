# Evidence 4.
## Demonstration of a Programming Paradigm
Frida Alexia Arcadia Luna A01711615
---
# Context & Description

For this evidence, I have chosen to work with a Leetcode problem using the Logical Paradigm and Prolog Language. I chose to work with Leetcode because, in my experience, companies more often than not choose to use this kind of problems for technical interviews. I have found really helpful to study them for these interviews. 

### Logical Paradigm
" The logical paradigm is a computational approach that aims to unify different areas of computing by utilizing the generality of logic ". It mainly consists in working with predicates,that are formed by facts or rules, based on telling the program what needs to be done instead of telling it how it is done. (Kowalski, 2014).

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

![1](https://github.com/user-attachments/assets/50eaf150-1eca-4582-b0be-897ede0992ee)

![2](https://github.com/user-attachments/assets/55a575e4-d8bf-49b4-b7d8-0c42121da621)

![3](https://github.com/user-attachments/assets/e72a51f6-013c-4e7c-9ae9-b42422530308)

# Tests

I have implemented 8 tests, two of them come from the Leetcode platform, the other 6 I have implemented them based on those from Leetcode. The test cases are the following:

>
> [1,2,2,1], [2,2]
>
> [4,9,5], [9,4,9,8,4]
>
> [1,3,5,7,9,11,13], [2,4,6,8,10,11]
>
> [], []
>
> [1,2,3,4,5,6,7,8,9], [9,8,7,6,5,4,3,2,1]
>
> [73,187,90,22,198,8,143,17,61,27,42,156,174,52,65,36,40,29,153,125,38,44,130,47,105,88,75,95,107,195,13,171,37,5,3,188,134,92,94,66,176,145,135,77,26,144,160,123,51,110,167,97,111,186,62,34,132,41,128,18,54,117,191,48,79,184,106,157,120,59,28,101,139,27,16,124,83,31,14,112,96,115,98,6,19,87,15,150,181,104,10,70,21,46,72,49,11,1,4,109], [56,61,102,172,157,123,40,180,68,10,200,11,79,14,146,95,164,163,9,115,56,90,72,43,139,3,50,6,73,54,85,189,19,155,113,53,82,193,53,15,172,118,128,136,36,38,174,55,166,89,191,154,31,78,44,105,2,137,162,169,175,150,71,52,120,18,169,128,26,68,177,93,167,33,13,48,117,84,12,65,141,121,158,29,37,141,107,48,70,196,87,51,140,30,4,44,125,92,39,27]
>
> [1,2,3,4,5,6,7,8,9], [10,11,12,13,14,15,16,17,18,19]
>
> [1,2,3,4], [3,4,5,6]

# Time & Space complexity

Time complexity: O(n * m), given that both functions travel through both of the lists.

Space complexity: O(n + m), given that the maximum depth of the recursion is equal to the length of the list being searched.

# Analysis

I chose to work with this paradigm because I found it very useful and simple enough for it to be used during technical interviews, when applying for a job or an internship. I know that the language isn't accepeted during most of the test (at least I have never seen it before), but I think it is practical. Thanks to unification, the code follows a cascade process, which I can easily integrate recursion with. 

### Other solutions

To present another solution, I chose to work with the functional paradigm and the Racket language. Functional programming is a paradigm that includes the mathematical logic of lambda calculus into programming. In turn, lambda calculus allows abstraction, variable binding and substitution. With this paradigm, it is easier to apply recursion rather than iterations. The code to solve the problem we are treating in this evidence is the following.

    #lang racket

    ;; Auxiliary function 'find' that looks up the element of the first list in the second
    (define (find x lst)
      (cond
        [(null? lst) false]
        [(equal? x (car lst)) true]  
        [else (find x (cdr lst))])) 

    ;; Intersect function
    (define (intersect lst1 lst2)
      (cond
        [(null? lst1) '()] ; Base case, if lst1 is empty, return empty list
        [(find (car lst1) lst2) 
         (cons (car lst1) (intersect (cdr lst1) lst2))] 
        [else (intersect (cdr lst1) lst2)])) 

The following diagram explains how the function works step by step.

![intersect( 1,2,3,4 ,  3,4,5,6 , X)](https://github.com/user-attachments/assets/c0969d8f-a35d-4dda-b7cd-88c83a7ec724)

![intersect( 1,2,3,4 ,  3,4,5,6 , X)  (1)](https://github.com/user-attachments/assets/4825d170-bd6b-46df-9d03-dd110df09596)

![intersect( 1,2,3,4 ,  3,4,5,6 , X)  (2)](https://github.com/user-attachments/assets/da434aa2-5dd3-4f5a-af73-60faf5c14f63)


### Time & Space Complexity

The 'find' function, in its worst case, has to go through all of the elements of the list, which gives it a time complexity of O(n). For the intersect function, it also checks all the elements of the first list, calling the find fuction for each, so the overall time complexity would be of O(m*n).

For the space complexity, we calculate based on the depth of recursion, which in this case, and in the worst case, is the length of lst1, which will also make it O(n).

Both paradigms and languages have given the same time complexity for solving this problem. In this case, I believe both can be useful for solving the problem.Personally, I find the syntax of Prolog a bit easier than Racket, which is why, I would prefer to use it, but other than that, in this particular problem, we cannot fully see the extense of the different characteristics of each language.

# References

Aguirre, B. (2025). Lambda Calculus Functional Paradigm. https://docs.google.com/document/d/1w8DCXQ4cQPdcDPQOVN3Hn65X000V0oixgOatseDyvUE/edit?usp=sharing 

Coursera. (2024, 7 noviembre). Logic Programming: What It Is and How to Use It. Coursera. https://www.coursera.org/articles/logic-programming-language

Kowalski, R. (2014). *Logic Programming*. Handbook of the history of logic (pp. 523-569). https://doi.org/10.1016/b978-0-444-51624-4.50012-5

