// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Proof{
 constructor(){}

 struct FileDetails{
  uint256 timeStamp;
  string owner; //later can replace with address
 }
 mapping(string => FileDetails) files;
//storing file owner at block.timeStamp
function set(string owner, string fileHash){
  //there is no proper way to check if a key exists or not therefore we
//check for detail values
if(files[fileHash].timeStamp == 0) {
  files[fileHash] = FileDetails(block.timeStamp, owner);

//we are trigerring an event so that the front-end of our app knows that the file existence and ownership details
logFileAddedStatus(true, block.timeStamp, owner, fileHash)
} else {
  //tells fe files existnce & ownership details couldn't be stored because they exist
  logFileAddedStatus(false, block.timeStamp, owner, fileHash);
}
//that is used to get file information
function get(string fileHash)public view returns(uint256 timeStamp, string owner) {
 return (files[fileHash].timeStamp, files[fileHash].owner);
}

}
