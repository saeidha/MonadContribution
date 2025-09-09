// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Payable.sol";

contract Deployer {
    address[] public contracts;

    function deployAll() external {
        contracts.push(address(new MonadPay()));
        contracts.push(address(new DepMonad()));
        contracts.push(address(new PaymeMonad()));
        contracts.push(address(new MonadAddBalance()));
        contracts.push(address(new MonadNote()));
        contracts.push(address(new MonadSave()));
        contracts.push(address(new PayEventMonad()));
        contracts.push(address(new MonadPayTrack()));
        contracts.push(address(new PayCountMonad()));
        contracts.push(address(new MonadContribute()));
    }

    function getContracts() external view returns (address[] memory) {
        return contracts;
    }
}