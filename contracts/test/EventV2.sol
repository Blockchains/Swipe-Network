pragma solidity ^0.5.0;

/// @title EventV2 Interface
/// @author growlot (@growlot)
interface EventV2 {

    event Initialize(
        address indexed owner,
        address indexed sxp,
        address indexed rewardProvider,
        uint256 minimumStakeAmount,
        uint256 rewardCycle,
        uint256 rewardAmount,
        uint256 _rewardCycleTimestamp
    );

    event Stake(
        address indexed staker,
        uint256 indexed amount
    );

    event Claim(
        address indexed toAddress,
        uint256 indexed amount,
        uint256 indexed nonce
    );

    event Withdraw(
        address indexed toAddress,
        uint256 indexed amount
    );

    event OwnershipTransferAuthorization(
        address indexed authorizedAddress
    );

    event OwnerUpdate(
        address indexed oldValue,
        address indexed newValue
    );

    event MinimumStakeAmountUpdate(
        uint256 indexed oldValue,
        uint256 indexed newValue
    );

    event RewardProviderUpdate(
        address indexed oldValue,
        address indexed newValue
    );

    event RewardPolicyUpdate(
        uint256 oldCycle,
        uint256 oldAmount,
        uint256 indexed newCycle,
        uint256 indexed newAmount,
        uint256 indexed newTimeStamp
    );

    event DepositRewardPool(
        address indexed depositor,
        uint256 indexed amount
    );

    event WithdrawRewardPool(
        address indexed toAddress,
        uint256 indexed amount
    );

    event ApproveClaim(
        address indexed toAddress,
        uint256 indexed amount,
        uint256 indexed nonce
    );

    event UpcomingEvent(
        uint256 indexed oldValue,
        uint256 indexed newValue
    );
}
