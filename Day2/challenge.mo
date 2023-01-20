import Iter "mo:base/Iter";
import Nat "mo:base/Nat";
import Nat8 "mo:base/Nat8";
import Text "mo:base/Text";
import Char "mo:base/Char";
import Array "mo:base/Array";
import Buffer "mo:base/Buffer";
import Blob "mo:base/Blob";
actor{
  public func average_array(array : [Int]) : async Int{
    var sum : Int = 0;
    var count : Int = 0;
    Iter.iterate<Int>(Iter.fromArray(array), func(x, _index) {
      sum += x;
      count += 1;
    });
    return sum/count
  };
  public func count_character(t: Text, c: Char) : async Nat{
    let iter = Text.toIter(t);
    var count : Nat = 0;
    Iter.iterate<Char>(iter, func (x : Char, _index : Nat){ 
      if(c==x){
      count += 1;
      }
    });
    return count
  };

  public func factorial(n: Nat) : async Nat{
    if(n==0){
      return 1;
    };
    let iter = Iter.range(1, n);
    var fac : Nat = 1;
    Iter.iterate<Nat>(iter, func (x : Nat, _index : Nat){ 
      fac *= x
    });
    return fac
  };
  public func number_of_words(t: Text) : async Nat{
    let iter = Text.toIter(t);
    var count : Nat = 0;
    Iter.iterate<Char>(iter, func (x : Char, _index : Nat){ 
      if(Char.fromNat32(32)==x){
        count += 1;
      }
    });
    return count
  };
  //Internal Code
  func count_number(list: [Nat], n: Nat) : async Nat{
    let iter = Iter.fromArray(list);
    var count : Nat = 0;
    Iter.iterate<Nat>(iter, func (x : Nat, _index : Nat){ 
      if(n==x){
      count += 1;
      }
    });
    return count
  };
  public func find_duplicate(a: [Nat]) : async [Nat]{
    let dup = Buffer.Buffer<Nat>(1);
    let temp = Buffer.fromArray<Nat>(a);
    temp.sort(Nat.compare);
    var prev : Nat = 0;
    for (element in temp.vals()) {
      if(element != prev){
        prev := element
      }else{
        let count = await count_number(a, element);
        if (count > 1){
          dup.add(element);
        };
        prev := element
      }
    };
    return Buffer.toArray(dup)
  };
  public func convert_to_binary(n:Nat) : async Text{
    var binary: Text = "";
    var num : Nat = n;
    if(n == 0){
      binary := "0"
    };
    while (num != 0){
      binary := Text.concat(Nat.toText(num % 2), binary);
      num := num/2
    };
    return binary;
  }
}