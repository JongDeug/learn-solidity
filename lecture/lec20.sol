// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// 구조체
contract lec20{

    // <네이밍 룰>
    // 1. 변수 : 소문자, 새로운 단어의 시작은 대문자
    // 2. 함수 : 동사+목적어, 동사(소문자) 목적어(대문자)

    struct Character{
        uint256 age;
        string name;
        string job;
    }

    mapping(uint256=>Character) public characterMapping;
    Character[] public characterArray;

    function createCharacter(uint256 _age, string memory _name, string memory _jog) public pure returns(Character memory){
        return Character(_age, _name, _jog);
    }   

    function createChracterMapping(uint256 _key, uint256 _age,string memory _name,string memory _job )  public {
       characterMapping[_key] = Character(_age,_name,_job);
    }
    
    function getChracterMapping(uint256 _key)  public view returns(Character memory){
       return characterMapping[_key];
    }
    
    function createChracterArray(uint256 _age,string memory _name,string memory _job ) public {
       characterArray.push(Character(_age,_name,_job));
    }
    
    function getChracterArray(uint256 _index)  public view returns(Character memory){
       return characterArray[_index];
    }
}