# Day4

## Questions

Q1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?

Q2.How much accounts can a unique Principal own?

Q3.Can we safely upgrade a canister from interface A to interface B?

```sh
actor {
    public func greet(surname : Text, firstname : Text) : async Text {
        return "Hello" # firstname # surname # " !";
    };
    }
```motoko
Interface B
```motoko
actor {
    public func greet(firstname : Text) : async Text {
        return "Hello" # firstname # " !";
    };
    }
```

## Challenges

1.Write a function `unique` that takes a list l of type List and returns a new list with all duplicate elements removed.

```sh
unique<T> : (l : List<T>, equal: (T,T) -> Bool) -> List<T> 
```

Write a function `reverse` that takes l of type List and returns the reversed list.

```sh
reverse<T> : (l : List<T>) -> List<T>;
```

Write a function `is_anonymous` that takes no arguments but returns a Boolean indicating if the caller is anonymous or not.

```sh
is_anynomous : () -> async Bool; 
```

Write a function `find_in_buffer` that takes two arguments, buf of type Buffer and val of type T, and returns the optional index of the first occurrence of "val" in "buf".

```sh
find_in_buffer<T> :  (buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool) -> ?Nat
```

Take a look at the code we've seen before in this guide:
```sh
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
actor {

    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };
};
```

Add a function called ``get_usernames` that will return an array of tuples (Principal, Text) which contains all the entries in usernames.

```sh
get_usernames : () -> async [(Principal, Text)];
```