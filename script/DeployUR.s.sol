// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "./DeployUniversalRouter.s.sol";

contract DeployUR is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x1234567890abcdef1234567890abcdef12345678, // replace with real addresses
            weth9: 0x1234567890abcdef1234567890abcdef12345678,
            v2Factory: 0x1234567890abcdef1234567890abcdef12345678,
            v3Factory: 0x1234567890abcdef1234567890abcdef12345678,
            pairInitCodeHash: 0x0,
            poolInitCodeHash: 0x0,
            v4PoolManager: 0x1234567890abcdef1234567890abcdef12345678,
            v3NFTPositionManager: 0x1234567890abcdef1234567890abcdef12345678,
            v4PositionManager: 0x1234567890abcdef1234567890abcdef12345678
        });

        unsupported = address(0); // or deploy it here
    }
}
