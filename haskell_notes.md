# Notes from [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/)

## Chapter 2 - Starting Out
- To change the name of the prompt `:set prompt 'ghci >'`, sets the prompt to `ghci >`
- To set if something is not equal to something, `foo /= bar`
- __infix__ function are functions that occur between two numbers, a __prefix__	 function occurs at the beginning
- functions are called by writing the function name and then the parameters each seperated by a space
- can call a function an an infix function by seperating the function name with back ticks
- function syntax:
```haskell
doubleMe x = x + x
```
- lists are homogenous in haskell
- To do assignment in `ghci,` we need to use `let`. For example, to do the assigment that `x = 5` in ghci, we need to do `let x = 5`. In a script, we omit `let`
- strings are lists of characters: `"hello"` is equivalent to `['h', 'e', 'l', 'l', o]`
- concatenate two list with `++`, combine a number/character to the beginning of a list with `:`, i.e. 'A' : " human"
- To extract a unit from a list or a tuple use `!!`. [3,4,5,6] !! 2 -- this will to evaluate to 5 b/c indices start at 0 
- To extract an element from a list within a list:
```
let b = [[1,2,3], [2,3,4], [4,2,5]]
b !! 1 -- extracts [2,3,4]
b !! 1 !! 1 -- does this equal 3? yes!
```
- lists of lists can be of different lengths but not different _type_.
- To write a sequence: `[1..20]`
- To specify a step: `[1,3..20]` -- evaluates to [1,3,5,...,19]
- To decrement a list of numbers `[20,19..1]`
- List comprehension, let's say we want to double a number for all numbers less than 20 and only take the values greater than 30 and less than 50.
```
[x*2 | x <- [1..40], x*2 >=30 && x*2 <= 50]
```
- use multiple predictes in list comprehensions to obtain all combinations of the given list given your function.
- tuples are construct with () instead of [] - `let tup = [(1, "one"), (2, "two")]`
- tuples do not need to be homogenous
- tuples should be used instead of list when you know in advance how many components some piece of data should have.

## Chapter 3 - Types and Typeclasses