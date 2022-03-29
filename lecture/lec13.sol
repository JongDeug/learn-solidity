// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// event1 - 정의
contract lec13{
    //solidity에는 print함수가 없음
    //event키워드 event명(출력하고 싶은 값들)
    event info(string name, uint256 money);

    function sendMoney() public{
        //이벤트 출력 시 써주는거. emit 방출하다
        emit info("KimJongHwan", 1000);
    }
}