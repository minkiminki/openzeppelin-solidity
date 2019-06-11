pragma solidity ^0.5.0;

import "./ERC20.sol";

/* by minki */
contract BankToken is ERC20 {
    uint256 tokenValue;

    constructor(uint256 _tokenValue) public {
        tokenValue = _tokenValue;
    }

    function deposit(address account, uint256 amount) payable public {
        require(amount > 0);
        require(amount * tokenValue == msg.value);
        _mint(account, amount);
    }

    function withdraw(address payable account, uint256 amount) public {
        require(amount > 0);
        _burn(msg.sender, amount);
        assert(address(this).balance >= amount * tokenValue);
        account.transfer(amount * tokenValue);
    }
}
