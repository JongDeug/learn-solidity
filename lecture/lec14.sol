// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// event2 - indexed
contract lec14{
    event numberTracker(uint256 num, string str);
    // indexed를 이용해서 블록안에 저장되어 있는 값을 가져올 수 있다. 위의 코드는 그렇게 할 수 없다.
    event numberTracker2(uint256 indexed num, string str);

    uint256 num = 0;
    function PushEvent(string memory _str) public{
        emit numberTracker(num, _str);
        emit numberTracker2(num, _str);
        num++;
    }

    // String과 같은 참조 타입은 함수 내부에서 사용할 시 저장공간을 명시해줘야한다.
    // 번외 : event string 매개변수에 memory를 붙여주지 않는 이유는 함수 외부에 변수를 선언했기 때문이다. 즉 함수 외부는 storage에 저장 되기 때문에 따로 저장공간을 
    // 지정할  필요가 없다.
}