// SPDX-License-Identifier: ISC
pragma solidity ^0.8.19;

import { BaseScript } from "frax-std/BaseScript.sol";
import { console } from "frax-std/FraxTest.sol";
import { Storage } from "../contracts/Storage.sol";

// This is a free function that can be imported and used in tests or other scripts
function deployStorage() returns (address _address) {
    Storage _storage = new Storage();
    _address = address(_storage);
}

// Run this with source .env && forge script --broadcast --rpc-url $MAINNET_URL DeployStorage.s.sol
contract DeployStorage is BaseScript {
    function run() public broadcaster {
        address _address = deployStorage();
        console.log("Deployed Storage at address: ", _address);
    }
}
