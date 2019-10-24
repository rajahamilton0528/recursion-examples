## Recursion Examples

Tree recursion, start with a root, perform an action, move to the left or right.
In a binary search tree, the value held by the node's left child is always less than or equal to its own value.


##### Factorial

```
ruby factorial.rb 3 #=> 6
```

##### Fibonacci

```
ruby fibonacci.rb 5 #=> 5
```

##### Fibonacci with memoization

##### Reverse a string

General approach, two cases, base case, string is 1 char long, then we know it is "reversed" because it is the same forwards or backwards (one char), otherwise we aren't at the base case.

Build a new string starting with last character, append a recursive call to the remaining chars in the string, from char 0 to penultimate char.

```
ruby reverse.rb foobar
```

##### Permutations

Get all permutations (without built-in function) for a string. Add a second version that removes duplicates.
This creates a recursion tree for words of 4 characters or more.

#### More topics

 * Tail call recursion
 * Recursion with sorting algorithm
