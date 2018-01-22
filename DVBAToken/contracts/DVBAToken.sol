pragma solidity ^0.4.15;

import "../zeppelin/token/MintableToken.sol";

contract DVBAToken is MintableToken {
    string public constant name = "DVBAToken";
    string public constant symbol = "DVB";
    uint8 public constant decimals = 18;
}
