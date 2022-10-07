pragma solidity ^0.9.0;
//Possible ways of using call function

contract EtherBox {
    uint balance;

    function SetBalance() public {
        //In every invocation, it adds 10 to the existing value of the state variable
        balance = balance + 10;
    }

    function GetBalance() public payable returns (uint) {
        //Returns the current value of the state variable
        return balance;
    }
}

contract UsingCall {
    function UsingCall() public payable {
        //constructor, initializing the contract
    }

    function SimpleCall() public returns (uint) {
        bool status = true;
        EtherBox eb = new EtherBox();// Creating instance of EtherBox
        address myaddr = address(eb);// converting it into address
        status =myaddr.call(bytes4(sha3("SetBalance()")));// Using this address, we invoke setbalance on EtherBox contract
        return eb.GetBalance();
    }

    function SimpleCallwithGas() public returns (bool) {
        bool staus = true;
        EtherBox eb = new EtherBox();// Creating instance of EtherBox
        address myaddr = address(eb);// converting instance of EtherBox into an address
        status = myaddr.call.gas(200000)(bytes4(sha3("GetBalance()")));// alongside the call, gas is sent along so that function execution can be completed if it needs more gas
        return status;
    }

    function SimpleCallwithGasAndValue() public returns (bool) {
        bool status = true;
        EtherBox eb = new EtherBox();
        address myaddr = address(eb);
        status = myaddr.call.gas(200000).value(1)(bytes(sha3("GetBalance()")));//call here too is used to invoke GetBalance() in EtherBox. gas is sent along such that execution can be completed if it needs more gas. Besides gas, it is also possible to send Ether or wei to payable functions
        return status;
    }
}