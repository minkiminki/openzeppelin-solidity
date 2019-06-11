pragma solidity ^0.5.0;

import "./ERC20.sol";

/* by minki */
contract BankToken is ERC20 {
    uint256 constant tokenValue;

    constructor(uint256 _tokenValue) public {
        tokenValue = _tokenValue;
    }

    function deposit(address account, uint256 amount) public {
        require(amount > 0);
        require(amount * tokenVal == msg.value);
        _mint(account, amount);
    }

    function withdraw(address account, uint256 amount) public {
        require(amount > 0);
        require(_balances[msg.sender] >= amount);
        assert(address(this).balance >= amount * tokenVal);
        account.transfer(amount * tokenVal);
    }
}
