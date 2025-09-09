// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MonadPay {
    string public message = "Contract1 active!";
    function pay() external payable {}
}

contract DepMonad {
    uint public total;
    function deposit() external payable {
        total += msg.value;
    }
}

contract PaymeMonad {
    address public payer;
    function payMe() external payable {
        payer = msg.sender;
    }
}

contract MonadAddBalance {
    uint public balance;
    function addBalance() external payable {
        balance += msg.value;
    }
}

contract MonadNote {
    string public note;
    function payAndNote() external payable {
        note = "Hi Monad!";
    }
}

contract MonadSave {
    mapping(address => uint) public deposits;
    function save() external payable {
        deposits[msg.sender] += msg.value;
    }
}

contract PayEventMonad {
    event Paid(address indexed from, uint amount);
    function payEvent() external payable {
        emit Paid(msg.sender, msg.value);
    }
}

contract MonadPayTrack {
    address public lastPayer;
    uint public lastAmount;
    function payTrack() external payable {
        lastPayer = msg.sender;
        lastAmount = msg.value;
    }
}

contract PayCountMonad {
    uint public count;
    function payCount() external payable {
        count++;
    }
}

contract MonadContribute {
    uint public totalWei;
    function contribute() external payable {
        totalWei += msg.value;
    }
}