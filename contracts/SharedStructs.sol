//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

enum DepositStatus {
    None,
    Pending,
    InProgress, //This is not used. It is here to have 1on1 mapping with statuses of deposits on the smartcontracts from Elrond
    Executed,
    Rejected
}

struct Deposit {
    uint112 nonce;
    address tokenAddress;
    uint256 amount;
    address depositor;
    bytes32 recipient;
    DepositStatus status;
}

struct CrossTransferStatus {
    DepositStatus[] statuses;
    uint256 createdBlockNumber;
}

struct Batch {
    uint112 nonce;
    uint64 timestamp;
    uint64 lastUpdatedTimestamp;
    uint16 depositsCount;
}
