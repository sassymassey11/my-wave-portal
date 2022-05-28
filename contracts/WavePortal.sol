// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) public countSenderWaves;
    address[] public wavers;

    constructor() {
        console.log("SassyMassey deployed her first contract to the Test Net!");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
        countSenderWaves[msg.sender] = countSenderWaves[msg.sender]+1;
        wavers.push(msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getWavers() public {
        console.log("This is the most recent waver: %s", wavers[wavers.length-1]);
    }
}