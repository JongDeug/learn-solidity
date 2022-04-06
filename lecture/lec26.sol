// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;


// 에러핸들러 : requrie, revert, assert, try/catch

contract lec26{

    /*
    0.8.0  포함x
    0.8.1~
    assert: 오직 내부적 에러 테스트 용도, 불변성 체크 용도.
            assert가 에러를 발생시키면, Panic(uint256) 이라 에러타입의 에러 발생

    0.8.1~ 이상 버전은 assert 발생 시 gas를 환불 받을 수 있음.
    */

    
    function assertNow() public pure{
        assert(false);
    }
     
    function revertNow() public pure{
        revert("error message"); //에러 메시지 넣을 수 있음.
        // 조건 없이 에러를 발생시키니 if를 주거나 require을 사용하면됨.
    }

    function requireNow() public pure{
        require(false, "error message");
    }

    function onlyAdults(uint256 _age) public pure returns(string memory){
        if(_age < 19){
            revert("You are not allowed to pay for the cigarette");
        }
        return "Your payment is succeeded";
    }

    function onlyAdults2(uint256 _age) public pure returns(string memory){
        require(_age > 19,"You are not allowed to pay for the cigarette");
        return "Your payment is succeeded";
    }
}