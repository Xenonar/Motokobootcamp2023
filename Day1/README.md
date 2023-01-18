# Day1

In this folder will have 2 files
1. is the learning.mo -> which is for learning purpose
2. is the challenge.mo -> for challenge solver

### Question n Answer
Q1.How much is the current memory capacity of a canister?
Answer: 4 GB at the moment
Q2.What is the issue with the following code sample?

```sh
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```

Answer:  because __let__ is a immutable variable so if you want to update it needs to be __var__ or __stable var__


Q3.What is the issue with the following code sample?

```sh
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```

Answer: the function "change_message" is an update call so it should be __public func change_message__ instead of ___public query func change_message___

Q4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer
Answer: true
