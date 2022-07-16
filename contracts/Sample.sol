// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Sample {
    string public textRaw;
    address private owner;
    uint256 public num;

    constructor() {
        owner = msg.sender;
    }

    function setText(string calldata _text) external {
        textRaw = _text;
    }

    function inc() external {
        require(msg.sender == owner, "NOT_OWNER");

        num++;
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
