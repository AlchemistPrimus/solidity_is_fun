pragma solidity ^0.9.0;
//function constructs


contract functionParameters {

    function singleIncomingParameter(int _data) returns (int _output) {
        //Accepts one parameter _data and returns a single return value that is identified using _output of type int
        return _data*2;
    }

    function multpleIncomingParameter(int _data, int _data2) returns (int _output) {
        //takes multiple parameters and single return value identified by _output
        return _data * _data;
    }

    function multipleOutgoingParameter(int _data) returns (int square, int half) {
        //returning multiple parameters is a unique feature in solidity
        square = _data * _data;
        half = _data / 2;
    }

    function multipleOutgoingTuple(int _data) returns (int square, int half) {
        //Here is like above but instead of assigning return values as statements, we assign as tuple
        (square, half) = (_data * _data, _data / 2);
    }
    
}