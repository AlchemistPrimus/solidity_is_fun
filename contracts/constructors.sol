//Defining a contract
pragma solidity ^0.9.0;

contract HelloWorld {

    uint private simpleInt;

    //defining a constructor
    function HelloWorld() public {
        simpleInt = 5;
    }

    function GetValue() public view returns (uint) {
        return simpleInt;
    }

    function SetValue(uint _value) public {
        simpleInt = _value;
    }
}