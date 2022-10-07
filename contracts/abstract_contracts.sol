pragma solidity ^0.9.0;
// Abstract function illustrations


contract abstractHelloWorld {
    function GetValue() public view returns (uint);
    function SetValue(uint _value) public;

    function AddaNumber(uint _value) public returns (uint) {
        return 10;
    }
}

contract HelloWorld is abstractHelloWorld {
    uint private simpleInteger;

    function GetValue() public view returns (uint) {
        return simpleInteger;
    }

    function SetValue(uint _value) public {
        simpleInteger = _value;
    }

    function AddaNumber(uint _value) public returns (uint) {
        return simpleInteger + _value;
    }
}

contract client {
    abstractHelloWorld myObj;

    function client(){
        myObj = new HelloWorld();
    }

    function GetSetIntegerValue() public returns (uint) {
        myObj.SetValue(100);
        return myObj.AddaNumber(200);
    }
}