
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiSend {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Function to send Ether to multiple addresses
    function sendEther(address[] calldata recipients) external payable {
        uint256 totalRecipients = recipients.length;
        require(totalRecipients > 0, "No recipients");
        require(msg.value > 0, "No Ether sent");

        uint256 amountPerRecipient = msg.value / totalRecipients;

        for (uint256 i = 0; i < totalRecipients; i++) {
            payable(recipients[i]).transfer(amountPerRecipient);
        }

        // If there's a remainder, refund to sender
        uint256 remainder = msg.value % totalRecipients;
        if (remainder > 0) {
            payable(msg.sender).transfer(remainder);
        }
    }
}
