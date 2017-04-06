//: Playground - noun: a place where people can play

import UIKit

var str:String = "Hello, playground";
var jordi:Int=5;

str.append((String(jordi)))

var stringvalue="\(jordi)"

print(str+stringvalue)

var arr = [integer_t]()

arr.append(5);
arr.append(6);

for i in 0 ..< arr.count{
    print(arr[i])
}



// optional
var age : Int? = 27

age

print(age)
print(age!)




// made to pass nil
func stringToInt(someString : String ) -> Int?{
    return nil
}

func checkAgeValidity(age:Int?){
    if age == nil  {
        print("age is null")
    }
    else {
        print("age is equal to \(age!)")
    }
}

stringToInt(someString: "asdlkgjals")

checkAgeValidity(age: age)

age = nil

checkAgeValidity(age: age)





