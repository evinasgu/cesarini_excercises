### Exercise 2-1: The Shell

##### A. Erlang expressions

- 1 + 1.
Explanation: Erlang takes two integers and apply the sum operator in order to evaluate these operands. So this expression returns 2

- [1|[2|[3|[]]]].
Explanation: This will return the list [1, 2, 3]. The evaluation of sub-expression [3 | []] is equivalent to [3]. If we maka the substitution on the given expression we will obtain: [1 | [2 | [3]]], If we apply again the substitution, we obtain [1 | [2, 3]], and then we obtain [1, 2, 3] as result of the evaluation.

###### B. Assigning through pattern matching

- A = 1.
Explanation: This take the right hand and evaluate it as an integer 1. The name 'A' is not bound to any value, so A obtains the value of integer 1.

- B = 2. 
Explanation: Same as the last case.

- A + B. 
Explanation: A and B are integers and the sum operators can be applied on them. So the evaluation of these variables return 3 as result of being evaluated.

- A = A + 1.
Explanation: The shell evaluates the right hand of the expression obtaining 2 as a result. Then test the types, they are the same type. When the shell makes the comparisson between left hand and right hand sides it returns an error because 1 /= 2. The evaluation of this expression fails.

##### C. Recursive list definitions

- L = [A | [2, 3]].
Explanation: This returns the list [1, 2, 3]. Remember cons operator to construct list.

- [[3, 2]|1].
Explanation: This will return an unformed list after the evaluation. Remember again cons operator.

- [H|T] = L.
Explanation: This pattern matching is succesful. It will be assign 1 to H and the list [2, 3] to T, because L is not an empty list and H and T are not assigned, then pattern matching will make the assignment to H and T. 

###### D. Flow of execution through pattern matching

- B = 2. 
Explanation: Typical and basic pattern matching that results in succesful evaluation.

- B = 2.
Explanation: same as before.

- 2 = B.
Explanation: Succesful evaluation.

- B = C. 
Explanation: The pattern matching will fail because the variable C is unbounding.

- C = B.
Explanation: B is an integer, C is not bounded so, C takes the value of B and the pattern matching is succesful.

B = C. 
Explanation: This expression now is succesfully evaluated because B and C share the same type and value.

##### E. Extracting values in composite data types through pattern matching

- Person = {person, "Mike", "Williams", [1, 2, 3, 4]}.
Explanation = this expression is evaluated successfully.

- {person, Name, Surname, Phone} = Person.
Explanation = the person atom matchs with the atom person in Person variable. We have two tuples of length equals to 4 and Name, Surname, Phone are ubounded. So Name = "Mike", Surname = "Williams", Phone = [1, 2, 3, 4]. 

- Name.
Explanation: This expression returns "Mike".

### Exercise 2-2: Modules and Functions
- What happens when you call demo:times(3,5) ?
Answer: We are not exporting the times function from the demo module. This evaluation will fail.

- What about double(6) when omitting the module name?
Answer: We have to use the module name to invoque a compiled function.

- When you compile it, why do you get a warning that variable Other is unused?
Answer: Because the Other variable is not getting used in the body of the function.

- What happens if you rename the variable to _Other ?
Answer: The warning dissapear because the variables that starts with underscore are marked as unused variables to the compiler.



