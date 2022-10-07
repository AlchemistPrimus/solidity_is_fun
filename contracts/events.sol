//Illustration to show events in action. i.e events show certain changes in contracts. Event data is stored along with block data
pragma solidity ^0.9.0;

contract EventContract {

    event LogFunctionFlow(string);

    function ValidInt8(int _data) public returns (uint8) {
        LogFunctionFlow("Within function ValidInt8");

        if(_data < 0 || _data > 255) {
            revert();
        }

        LogFunctionFlow("Value is within expected range");
        LogFunctionFlow("Return value from function");

        return uint8(_data);
    }
}