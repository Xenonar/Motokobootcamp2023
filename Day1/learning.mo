//Homework 
//Task 1 => the return type of Blob.hash = Nat32
//Task 2&3
//https://m7sm4-2iaaa-aaaab-qabra-cai.raw.ic0.app/?tag=166261225
import Float "mo:base/Float";
actor{
  public func multiply(x : Int, y: Int) : async Int {
    return x * y
  };
  public func sqroot(x : Float, y: Float): async Float {
    return Float.sqrt((x*y)+10.3)
  }
}