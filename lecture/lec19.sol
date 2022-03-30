// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

//Mapping과 Array 주의 할 점 
contract lec19{
    uint256 public num = 80;
    mapping(uint256=>uint256) public numMap;
    uint256[] public numArray;

    function ChangeNum(uint256 _num) public{
        num = _num;
    }

    function ShowNum() public view returns(uint256){
        return num;
    }

    function ShowNumMap() public view returns(uint256){
        return numMap[0];
    }

    // push로 값을 넣었지만 show는 index 0을 사용한다는 것을 잊지 말 것.
    function ShowNumArray() public view returns(uint256){
        return numArray[0];
    }

    function NumMapAdd() public{
        numMap[0]=num;
    }

    function NumArrayAdd() public{
        numArray.push(num);
    }

    function UpdateArray() public{
        numArray[0] = num;
    }
    
    function UpdateMap() public{
        numMap[0] = num;
    }


    //이번건 딱히 주의점이랄게 없음 당연한거임.
    //메모리가 동기화되면서 같이 변하는게 아니고 메모리에 복사하기 때문에 
    //따로 바꾸고 싶으면 직접 바꿔줘야함.
}