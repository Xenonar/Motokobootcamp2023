# Day3

## Questions
 
Q1. True or False: the Internet Computer has a unique public key that can be used to verify responses coming from any subnets.

Q2. True or False: when I realize an update call, the boundary node will participate in the consensus but not during query calls.

Q3. True or False: I can create a certified variable that will certify the response of the following actor.

## Challenges

In your file called `utils.mo`: create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.

```sh
second_maximum(array : [Int]) ->  Int;
```

In your file called `utils.mo`: create a function called `remove_even` that takes an array [Nat] and returns a new array with only the odd numbers from the original array.

```sh
remove_even(array : [Nat]) -> [Nat];
```

In your file called `utils.mo`: write a function drop that takes 2 parameters: an array [T] and a Nat n. This function will drop the n first elements of the array and returns the remainder.
> ⛔️ Do not use a loop.

```sh
drop<T> : (xs : [T], n : Nat) -> [T]
```

In your file called `book.mo` create a custom type with at least 2 properties (title of type Text, pages of type Nat), import this type in your `main.mo` and create a variable that will store a book.

In your file called `book.mo` create a function called `create_book` that takes two parameters: a title of type Text, and a number of pages of type Nat and returns a book. This function will create a new book based on the parameters passed.

In `main.mo` import the type List from the Base Library and create a list that stores books.

In main.mo create a function called `add_book` that takes a book as parameter and returns nothing this function should add this book to your list. Then create a second function called `get_books` that takes no parameter but returns an Array that contains all books stored in the list.