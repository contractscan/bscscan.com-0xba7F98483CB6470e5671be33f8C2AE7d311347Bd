// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import '../RollUpStorage.sol';

interface IRollUpgradable {
  event SyncTx(bytes32 txHash);
  event PublishTx(bytes32 txHash);

  function verifyTxSet(RollUpStorage.Tx[] calldata txs) external returns (bool);

  function publishTx(bytes32 txHash) external;

  function isTxPublished(bytes32 txHash) external returns (bool);

  function getChainId() external returns (uint256);

  function isVerified(bytes32 hash) external returns (bool, address);
}