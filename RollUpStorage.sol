// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import '@openzeppelin/contracts/utils/structs/BitMaps.sol';

contract RollUpStorage {
  using BitMaps for BitMaps.BitMap;
  // sidechain id
  uint256 internal _chainId;

  // verified transaction
  mapping(bytes32 => address) internal _verified;
  // published transaction
  BitMaps.BitMap internal _published;

  struct Tx {
    bytes rlpTx;
    uint8 v;
    bytes32 r;
    bytes32 s;
    address singer;
  }

  uint256[47] private __gap;
}