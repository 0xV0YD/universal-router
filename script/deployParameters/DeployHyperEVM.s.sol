// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/types/RouterParameters.sol';

contract DeployHyperEVM is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x000000000022D473030F116dDEE9F6B43aC78BA3,
            weth9: 0x5555555555555555555555555555555555555555,
            v2Factory: 0x8f45C2143A875De1E31B1C3F523b4c6529E11615,
            v3Factory: 0x40059A6F242C3de0E639693973004921B04D96AD,
            pairInitCodeHash: 0x4ea93c483e04fb807568215bb1429bbdd54f31298f578c95149988c46bc5c142,
            poolInitCodeHash: 0xcbdcf588045201d61e0d58ddb4ce87ce4089028dbb12bcc0bf6efb4ec367bb7d,
            v4PoolManager: address(0),
            v3NFTPositionManager: address(0),
            v4PositionManager: address(0)
        });
    }
}
