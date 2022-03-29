// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// Mapping
contract lec17{
    // 매핑이란 특정한 key를 넣어주면 그에 대응되는 value를 반환한다. , 그리고 key value구성이기 때문에 length를 구할 수 없다.
    // mapping(key type => value type) 접근제어자 변수명;
    mapping(uint256=>uint256) private ageList;
    mapping(string=>uint256) private priceList;
    mapping(uint256=>string) private nameList;

    function setAgeList(uint256 _index, uint256 _age) public{
        ageList[_index] = _age;
    }
    function getAge(uint256 _index) public view returns(uint256){
        return ageList[_index];
    }

    function setPirceList(string memory _itemName, uint256 _price) public{
        priceList[_itemName] = _price;
    }
    function getPirce(string memory _itemName) public view returns(uint256){
        return priceList[_itemName];
    }

    function setNameList(uint256 _index, string memory _name) public{
        nameList[_index] = _name;
    }
    function getName(uint256 _index) public view returns(string memory){
        return nameList[_index];
    }
}