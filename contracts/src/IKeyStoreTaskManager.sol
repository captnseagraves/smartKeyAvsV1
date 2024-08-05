// // SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// import "@eigenlayer-middleware/src/libraries/BN254.sol";
// import "@eigenlayer-middleware/src/interfaces/IBLSSignatureChecker.sol";


// interface IKeyStoreTaskManager is IBLSSignatureChecker {
//     // EVENTS
//     event NewIsOwnerAddressRequest(uint32 indexed taskIndex, Task task);

//     event IsOwnerAddressResponse(
//         TaskResponse taskResponse,
//         TaskResponseMetadata taskResponseMetadata
//     );

//     event TaskCompleted(uint32 indexed taskIndex);

//     event TaskChallengedSuccessfully(
//         uint32 indexed taskIndex,
//         address indexed challenger
//     );

//     event TaskChallengedUnsuccessfully(
//         uint32 indexed taskIndex,
//         address indexed challenger
//     );

//     // STRUCTS
//     struct Task {
//         address smartWalletAddress;
//         address ownerAddress;
//         uint32 taskCreatedBlock;
//         // task submitter decides on the criteria for a task to be completed
//         // note that this does not mean the task was "correctly" answered (i.e. the number was squared correctly)
//         //      this is for the challenge logic to verify
//         // task is completed (and contract will accept its TaskResponse) when each quorumNumbers specified here
//         // are signed by at least quorumThresholdPercentage of the operators
//         // note that we set the quorumThresholdPercentage to be the same for all quorumNumbers, but this could be changed
//         bytes quorumNumbers;
//         uint32 quorumThresholdPercentage;
//     }

//     // Task response is hashed and signed by operators.
//     // these signatures are aggregated and sent to the contract as response.
//     struct TaskResponse {
//         // Can be obtained by the operator from the event NewTaskCreated.
//         uint32 referenceTaskIndex;
//         // This is just the response that the operator has to compute by itself.
//         bool isOwner;
//     }

//     // Extra information related to taskResponse, which is filled inside the contract.
//     // It thus cannot be signed by operators, so we keep it in a separate struct than TaskResponse
//     // This metadata is needed by the challenger, so we emit it in the TaskResponded event
//     struct TaskResponseMetadata {
//         uint32 taskResponsedBlock;
//         bytes32 hashOfNonSigners;
//     }

//     // FUNCTIONS
//     /// @notice Checks if a public key is an owner of a smart wallet.
//     /// @dev This function creates a new isOwnerPublicKey task and assigns it a taskId
//     /// @param smartWalletAddress The address of the smart wallet.
//     /// @param ownerAddress The address of the owner to check.
//     function isOwnerAddressRequest(
//         address smartWalletAddress,
//         address ownerAddress,
//         uint32 quorumThresholdPercentage,
//         bytes calldata quorumNumbers
//     ) external;

//     /// @notice Responds to a isOwnerAddress task.
//     /// @dev This function is called by operators to respond to a task.
//     /// @param task The task details including the smart wallet and owner addresses.
//     /// @param taskResponse The response details including the reference task index and the squared number.
//     /// @param nonSignerStakesAndSignature Details of stakes and signatures of non-signers.
//     function isOwnerAddressResponse(
//         Task calldata task,
//         TaskResponse calldata taskResponse,
//         NonSignerStakesAndSignature memory nonSignerStakesAndSignature
//     ) external;


//     /// @notice Returns the current 'taskNumber' for the middleware
//     function taskNumber() external view returns (uint32);

//     // // NOTE: this function raises challenge to existing tasks.
//     function raiseAndResolveChallenge(
//         Task calldata task,
//         TaskResponse calldata taskResponse,
//         TaskResponseMetadata calldata taskResponseMetadata,
//         BN254.G1Point[] memory pubkeysOfNonSigningOperators
//     ) external;

//     /// @notice Returns the TASK_RESPONSE_WINDOW_BLOCK
//     function getTaskResponseWindowBlock() external view returns (uint32);
// }
