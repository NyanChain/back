//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract HashStorage {
    mapping(bytes32 => bool) public hashDataMap;

    function saveHash(string memory _hash) public {
        bytes32 hashBytes = keccak256(bytes(_hash));
        hashDataMap[hashBytes] = true;
    }

    function checkHash(string memory _hash) public view returns (bool) {
        bytes32 hashBytes = keccak256(bytes(_hash));
        return hashDataMap[hashBytes];
    }

}