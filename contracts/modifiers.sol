pragma solidity ^0.9.0;
//Illustrating modifiers which are used to modify the behaviour of a function. Modifiers can only be applied to funtions.

contract ContractWithoutModifier {

    address owner;
    int public mydata;

    function ContractWithoutModifier(){
        owner = msg.sender;
    }

    function assignDoubleValue(int _data) public {
        if(msg.sender == owner) {
            mydata = _data * 2;
        }
    }

    function AssignTenerValue(int _data) public {
        if(msg.sender == owner) {
            mydata = _data * 10;
        }
    }
}

//code execution path altered with modifiers.

contract ContractWithModifier {

    address owner;
    int public mydata;

    function ContractWithoutModifier(){
        owner = msg.sender;
    }

    //special function, modifier used as a decorator in function signature.
    modifier isOwner {
        // require(msg.sender == owner);
        if(msg.sender == owner) {
            _;
        }
    }

    function AssignDoubleValue(int _data) public isOwner {
        mydata = _data * 2;
    }

    function AssignTenerValue(int _data) public isOwner {
        mydata = _data * 10;
    }
}