//Here contract named "client" deploys and creates a new instance of another contract "HelloWorld" it does so using new keyword as shown >> "HelloWorld myObj = HelloWorld();
pragma solidity ^0.9.0;

contract HelloWorld {
    uint private simpleInt;

    function getValue() public view returns (uint) {
        return simpleInt;
    }

    function setValue(uint _value) public {
        simpleInt = _value;
    }
}

contract client {
    function useNewKeyword() public returns (uint) {

        HelloWorld myObj = new HelloWorld();//Deploying a new contract

        myObj.setValue(10);

        return myObj.getValue();
    }
}

//Deploying address of a contract i.e client deploys Helloworld using already known address of a contract
contract HelloWorld2 {
    uint private simpleInt;

    function GetValue() public view returns (uint) {
        return simpleInt;
    }

    function SetValue(uint _value) public {
        simpleInt = _value;
    }
}

contract client {
    address obj ;

    function setObject(address _obj) external {
        obj = _obj;
    }

    function UseExistingAddress() public returns (uint) {
        HelloWorld2 myObj = HelloWorld2(obj);// Deploying a new contract
        myObj.SetValue(10);
        return myObj.GetValue();
    }
}