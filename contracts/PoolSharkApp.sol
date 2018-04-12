pragma solidity ^0.4.21;

import "./Pool.sol";
import "./Ownable.sol";

contract PoolSharkApp is Ownable {

    address public owner;
    address[] public pools;

    function PoolSharkApp() public {
        owner = msg.sender;
    }

    function createPool(string _name, uint256 _rate, uint256 _deadline) external returns (bool success) {
        address newPool = new Pool(_name, _rate, _deadline);
        pools.push(newPool);
        return true;
    }
}
