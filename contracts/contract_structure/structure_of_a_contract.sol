//Structre of a smart contract
pragma solidity ^0.9.0;

contract Sample {
    //state variables
    uint256 data;
    address owner;

    //event definition
    event logData(uint256 dataToLog);

    //function modifier
    modifier onlyOwner(){
        if (msg.sender == owner){
            _;
        }
    }

    //constructor
    function Sample(uint256 initData, address initOwner) {
        data = initData;
        owner = initOwner;
    }

    //functions
    function getData() returns (uint256 returnedData){
        return data;
    }

    //function using onlyowner modifier
    function setData(uint256 newData) onlyowner{
        logData(newData);
        data = newData
    }

    //ARRAYS

    //dynamic size array
}