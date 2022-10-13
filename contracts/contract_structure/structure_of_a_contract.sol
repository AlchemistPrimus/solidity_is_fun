//Structre of a smart contract
pragma solidity ^0.9.0;


contract myContract{
    //VARIABLES(state variables)
    //State variables are permanently stored in the blockchain and not defined within any function

    int internal myInternalVar;//Declaring a state variable here, internal is a qualifier. other quaifiers include; private, public, constant
    string internal names;//state variable of string data type
    


    //STRUCTURES(STRUCTS)
    
    //declaring a struct
    struct thisIsStruct{
        int total;//integer value field for our struct
        string name;//Defining string value place for this structure
    }

    whereto=thisIsStruct(myInternalVar, names);

    //MODIFIERS

    //construct that changes the behaviour of the executing code. Other mofiers include, payable

    modifier signing(){
        if (msg.sender == clientAddr) {
            _;
        }
    }

    //EVENTS

    //can be used to trigger a function
    event getNFT(address, int); 

    //ENUMERATIONS(enum)

    //These are like predefined constants, do not end with semicolon

    enum gender {male, female}

    //declaring a variable with enumeration
    gender _gender = gender.male;


    //FUNCTIONS

    //These are the backbone of solidity smart contracts and have the following qualifiers; public, internal, private, external
    //functions also have the following modifiers; constant, view, pure, payable

    function setTicket(address _personId) signing() payable external returns (bool){
        //pass
    }

}



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