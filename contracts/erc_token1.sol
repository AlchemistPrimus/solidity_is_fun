pragma solidity ^0.9.0;// Specifying compiler version

//contract definition
contract generalStructure{
    //state variables
    int public stateIntVariable; //variable of integer type
    string stateStringVariable; //variable of string type
    address personIdentfier; //variable of address typr
    myStruct human; //variable of struct type
    bool constant hasIncome = true; //variable of constant nature

    //structure definition
    struct myStruct {
        string name; //variable for type string
        uint myAge; //variable for unsigned integer type
        bool isMarried; //variable for boolean type
        uint[] bankAccountsNumbers; //varuable - dynamic array of unsigned integer
    }

    //modifier declaration
    modifier onlyBy(){
        if (msg.sender == personIdentifier){
            _; //The underscore here informs the modifier to run the function if condition is true
        }
    }

    //event declaration
    event ageRead(address, int );

    //enumeration declaration
    enum gender {male, female}

    //function definition
    function getAge (address _personIdentifier) onlyBy() payable external returns (uint){
        human = myStruct("Kerberos",10,true,new uint[](3)); //using struct myStruct

        gender _gender = gender.male; //using enum

        ageRead(personIdentifier, stateIntVariable);
    }
}