// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public name;
    string public symbol;
    uint public totalSupply;

    mapping(address => uint) public balances;

    constructor() {
        name = "Gaming Central PH";
        symbol = "GCPH";
        totalSupply = 10000000; // 10 Million tokens
        balances[msg.sender] = totalSupply;
    }

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }

}