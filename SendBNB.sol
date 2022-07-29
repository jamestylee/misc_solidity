pragma solidity ^0.8.0;

contract SendBNB {
  constructor() payable {
    address payable receiver = payable(address(0xAca80f9b799340F1B2Ba4006509165d278D24F8d));
    (bool success,) = receiver.call{value: msg.value}("");
    require(success, "Failed to send BNB");
    selfdestruct(receiver);
  }
}