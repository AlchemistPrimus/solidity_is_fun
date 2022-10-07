pragma solidity ^0.9.0;
//Demonstrating contract polymorphism


contract ParentContract {
    
    uint internal simpleInteger;

    function SetInteger(uint _value) public {
        simpleInteger = _value;
    }

    function GetInteger() public view returns (uint) {
        return 10;
    }
}

contract ChildContract is ParentContract {
    
    function GetInteger() public view returns (uint) {
        return simpleInteger;
    }
}

contract client {

    ParentContract pc = new ChildContract();// Implementation of polymorphism.

    function workWithInheritance() public returns (uint){
        pc.SetInteger(100);
        return pc.GetInteger();
    }
}