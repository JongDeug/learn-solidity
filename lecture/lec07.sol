// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// function4 - 4개의 저장 영역과 string
contract lec7{
    /*
    Storage : 대부분의 변수, 함수들이 저장되며, 영속적으로 저장되어 가스 비용이 비싸다.
    Memory : 함수 안의 값, 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장 된다.
             그러나, storage 처럼 영속적이지 않고, 함수 내에서만 유효하기에 storage보다 가스 비용이 싸다.
    Calldata : 주로 external function의 파라미터에서 사용 됩니다.
    Stack: EVM에서 stack data를 관리할 때 쓰는 영역인데 1024MB 제한적입니다.
    */

    //function -string
    function get_string(string memory _str) public pure returns(string memory){
        return _str;
    }
}