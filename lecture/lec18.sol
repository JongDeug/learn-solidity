// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//Array
contract lec18{
    
    uint256[] public ageArray;
    uint256[10] public ageFixedSizeArray;
    string[] public nameArray= ["Jong", "Jin", "Alley"];

    function AgeLength() public view returns(uint256){
        return ageArray.length;
    }

    function AgePush(uint256 _age) public{
        ageArray.push(_age);
    }

    function AgeGet(uint256 _index) public view returns(uint256){
        return ageArray[_index];
    }

    //제일 최신의 값이 지워짐, length도 줄어듦
    function AgePop() public{
        ageArray.pop();
    }

    //원하는 값을 지울 수 있지만 0으로 채워지고 length는 그대로
    function AgeDelete(uint256 _index) public{
        delete ageArray[_index];
    }
    
    function AgeChange(uint256 _index, uint256 _age) public{
        ageArray[_index] = _age;
    }
}