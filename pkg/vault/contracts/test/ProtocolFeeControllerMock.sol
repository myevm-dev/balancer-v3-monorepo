// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.24;

import "../ProtocolFeeController.sol";

contract ProtocolFeeControllerMock is ProtocolFeeController {
    constructor(IVault vault_) ProtocolFeeController(vault_) {
        // solhint-disable-previous-line no-empty-blocks
    }

    function getPoolTokensAndCount(address pool) external view returns (IERC20[] memory tokens, uint256 numTokens) {
        return _getPoolTokensAndCount(pool);
    }

    function getPoolCreatorInfo(
        address pool
    ) external view returns (address poolCreator, uint256 creatorSwapFeePercentage, uint256 creatorYieldFeePercentage) {
        return (_poolCreators[pool], _poolCreatorSwapFeePercentages[pool], _poolCreatorYieldFeePercentages[pool]);
    }
}
