//Challenge
// Canister https://m7sm4-2iaaa-aaaab-qabra-cai.raw.ic0.app/?tag=195912882
import Nat "mo:base/Nat";
actor {
  stable var counter : Nat = 0;

  //1
  public func multiply(n : Nat, m : Nat) : async Nat{
    return Nat.mul(n,m)
  };

  //2
  public func volume(n : Nat) : async Nat{
    return Nat.pow(n, 3)
  };

  //3
  public func hours_to_minute(n : Nat) : async Nat{
    return Nat.mul(n, 60)
  };
  
  //4
  public func set_counter(n : Nat) : async () {
    counter := n;
  };
  public query func get_counter() : async Nat{
    return counter
  };
  
  //5
  public func test_divide(n : Nat, m : Nat) : async Bool{
    if(Nat.rem(n,m)==0 or Nat.rem(m,n)==0){
      return true
    }else{
      return false
    }
  };
  //6
  public func is_even(n:Nat):async Bool{
    if(Nat.rem(n,2)==0){
      return true
    }else{
      return false
    }
  }

}