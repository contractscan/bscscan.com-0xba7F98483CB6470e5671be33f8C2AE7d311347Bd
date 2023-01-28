// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.17;

library CommonError {
  // pass zero address as args
  error ZeroAddressSet();
  // failed to compare the RLP encoded data with the original data after parsing
  error RawDataNotMatch();
  // no permission to do something
  error NoPermission();
  // arrays are not allowed to be empty
  error ArrayCanNotEmpty();
  // failed to verify the original transaction from the sidechain
  error FailedVerifyTx();
  // the data of the transaction is not from the expected sidechain
  error chainIdNotMatch();
  // item's length is not correct
  error ItemLenError();
  // Iterator has not next element
  error IteratorNoMoreElement();
  // item is not a list
  error ItemNotList();
  // sidechain id mot match
  error SidechainIdNotMatch();
  // transaction already exists
  error TxAlreadyExists(bytes32 hash, address singer);
  // transaction already published
  error TxAlreadyPublished();
}