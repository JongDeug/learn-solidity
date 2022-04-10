// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// balance와 msg.sender
contract lec33{
    /*
        주소.balance는 해당 특정 주소의 현재 갖고 있는 이더의 잔액을 나타 냅니다. (msg.value는 송금액)
        주소.balance와 같은 형태로 사용합니다.

        msg.sender는 스마트 컨트랙을 사용하는 주체라고 볼 수 있습니다.
        msg.sender는 앞으로 설명해야 할 call vs delegate call에서 주요 내용이니 관심있게 봐야합니다.
    */
}

contract MobileBanking{
    event SendInfo(address _msgSender, uint256 _currentValue);
    event MyCurrentValue(address _msgSender, uint _value);
    event CurrentValueOfSomeone(address _msgSender, address _to, uint256 _value);

    function sendEther(address payable _to) public payable{
        require(msg.sender.balance>=msg.value, "Your balance is not enough");
        _to.transfer(msg.value);
        emit SendInfo(msg.sender, (msg.sender).balance);
    }

    function checkValueNow() public{
        emit MyCurrentValue(msg.sender, (msg.sender).balance);
    }

    function checkUserMoney(address _to) public{
        emit CurrentValueOfSomeone(msg.sender, _to, _to.balance);
    }
}