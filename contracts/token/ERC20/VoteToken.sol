pragma solidity ^0.5.0;

import "./ERC20.sol";

/* by minki */
contract VoteToken is ERC20 {
    uint voteYes = 0;
    uint voteNo = 0;

    function vote(bool proposal, uint256 amount) public {
        _burn(msg.sender, amount);
        if(proposal) {
            voteYes = voteYes + 1;
        }
        else {
            voteNo = voteNo + 1;
        }
    }
}
