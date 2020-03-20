pragma solidity ^0.4.17;

import 'zeppelin-solidity/contracts/token/StandardToken.sol';

contract TutorialToken is StandardToken {
    string public name = 'TutorialToken';
    string public symbol = 'TT';
    uint8 public decimals = 2;
    uint public INITIAL_SUPPLY = 12000;

    function TutorialToken() public {
        totalSupply = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY/2;
        balances[0x35F46e267812D1fD08305f300233de6Aa0Cb2acE] = INITIAL_SUPPLY/2;
    }
}