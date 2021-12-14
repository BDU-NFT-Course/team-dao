//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract HEXDelos is ERC20, AccessControl {
    address public admin;
    constructor() ERC20('HEX Delos Token','HEXD'){
        _mint(msg.sender, 10000 *10 **18);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, "Only admin allowed");
        _mint(to, amount);
    }

    function burn(uint amount) external{
        require(msg.sender == admin, "Only admin allowed");
        _burn(msg.sender, amount);
    }
}