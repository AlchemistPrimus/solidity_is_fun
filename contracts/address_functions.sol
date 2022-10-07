pragma solidity ^0.9.0;
// Using sender address method to illustrate Check-Deduct-Transfer(CDF) or Check-Effects-Interaction(CEI). This is where send method which is low level invokes fallback functions that recursively call back within the calling contract again and again.


contract CheckDeductTransfer {
    mapping (address => uint) balance;//address maps to uint balance of the account. mapping is called balance

    function SimpleSendToAccount(uint amount) public returns (bool) {
        if(balance[msg.sender] >= amount) {
            balancee[msg.sender] -= amount;
            if (msg.sender.send(amount) == true) {
                return true;
            }
            else {
                balance[msg.sender] += amount;
                return false;
            }
        }
    }
}

//Illustrating the use of transfer method
contract TransferAddressMethod {
    function SimpleTransferToAccount() public {
        msg.sender.transfer(1);//transfers one wei
    }
}