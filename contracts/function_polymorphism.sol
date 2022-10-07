//Demonstrating function polymorphism
pragma solidity ^0.9.0;

contract HelloFunctionPolymorphism {
    function getVariableData(int8 data) public constant returns(int8 output){
        return data;
    }

    function overloadFunction(int16 data) public constant returns(int16 output){
        return data;
    }
}