//Demonstrating single inheritance on contracts

pragma solidity ^0.9.0;

contract ParentContract {
    uint internal simpleInteger;

    function SetInteger(uint _value) external {
        simpleInteger = _value;
    }
}

contract ChildContract is ParentContract {
    bool private simpleBool;

    function GetInteger() public view returns (uint) {
        return simpleInteger;
    }
}

contract Client {
    ChildContract pc = new ChildContract();

    function workWithInheritance() public returns (uint) {
        pc.SetInteger(100);
        return pc.GetInteger();
    }
}

//Demonstrating multiple inheritance in contracts
contract SumContract {
    function Sum(uint a, uint b) public returns (uint) {
        return a + b;
    }
}

contract MultiContract is SumContract {
    function Multiply(uint a, uint b) public returns (uint) {
        return a * b;
    }
}

contract DivideContract is SumContract {
    function Divide(uint a, uint b) public returns (uint) {
        return a / b;
    }
}

contract SubContract is SumContract, MultiContract, DivideContract {
    function sub(uint a, uint b) public returns (uint) {
        return a-b
    }
}

contract client {
    
    function workWithInheritance() public returns (uint) {
        uint a = 20;
        uint b = 10;
        SubContract subt = new SubContract();
        return subt.Sum(a,b)
    }
}