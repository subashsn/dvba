pragma solidity ^0.4.15;

import "../zeppelin/crowdsale/Crowdsale.sol";
import "../zeppelin/token/MintableToken.sol";
import "./DVBAToken.sol";

contract DVBACrowdsale is Crowdsale {
    function DVBACrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet) 
        Crowdsale(_startTime, _endTime, _rate, _wallet)
    {

    }

    function createTokenContract() internal returns (MintableToken) {
        return new DVBAToken();
    }
}
