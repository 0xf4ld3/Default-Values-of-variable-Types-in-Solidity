// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Example1{
    //contract to show the default values of variables ie at their "zero state"

    //default value of variable type uint and int 
    uint public age;   // default value= 0
    int public temperature;    //default value= 0

    //default value of variable type address
    address public owner;    //default value= 0x0000000000000000000000000000000000000000  (it's a null address)
    
    //default value of variable type bool
    bool public Pass;    //default value=false ie false is the value at zero state


////For bool, address, int and uint types you can use the commented function below to test for their default values. ////
//// The function below contains a boolean functionality where it returns true or false ////
//// when the specified variables above are compared using the comparison operator == (Equality operator) to their zero state values  //// 
//// Just uncomment the function and replace variableIdentifier with the respective identifier ////
//// (eg. replace variableIdentifier with "age" for variable type uint). Also replace the zeroStateVal ////
////  with the value of the respective variables when they are zero state (eg. replace zeroStateVal with ////
//// "uint (0)" in-case of age variable)      NOTE: Do Not Include the quotes while Replacing!!!   ////



   ///////////////////////////////////////////////////////////
   //// function test() public view returns(bool){        ////
   ////                                                   ////
   ////     return variableIdentifier == zeroStateVal;    ////
   //// }                                                 ////
   ///////////////////////////////////////////////////////////



    //default value of variable type string
    string  myName;    //default value = "  " (it's an empty string)
    
    //function to test the default value of variable type string 
    function test1() public view returns (string memory){
        return myName;
    }

    //default value of variable type bytes ---> a dynamically sized bytes 
    bytes  myCareer;   //default value= "  " (it's an empty byte)
    
    function test2() public view returns (bytes memory){
        return myCareer;
    }
    //default value of variable type byte[1.....32] ----> statically sized bytes 
    bytes32  myJobTitle= "Smart contract Auditor"; //the default value is the hex (0x536d61727420636f6e74726163742041756469746f7200000000000000000000) of initialized value to myJobTitle variable
    
    //function to test the default value myJobTitle
    function test3() public view returns(bytes32){
        return myJobTitle;
    }

    //default value of variable type array  ---> (dynamic array)
    bool []  amAdev;  //the default value is an empty array

    //function to test the default value of amAdev array
    function test4() public view returns (bool [] memory){
        return amAdev;
    }
  
    //default value of a variable type array ----> (static array)
    uint256 [3]  array1=[1, 2, 3];  //the default value is 1, 2, 3    

    //function to test the default value of array1 array
    function test5() public view returns (uint256 [3] memory){
        return array1;
    }

    //default value of variable type enum NOTE:"enum without members is not allowed"
    enum profile {name, Age, Gender, Date_of_Birth}  //default value= name
    profile  Profile;

    // function to test default value of enum profile
    function test6() public view returns (bool){
        return Profile == profile(0);
    }
}
