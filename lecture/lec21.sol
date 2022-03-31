// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// if-else
contract lec21{

    string private outcome = "";
    
    function isIt(uint256 _number) public returns(string memory){
        if(_number == 5){
            outcome = "Yes, it is 5";
            return outcome;
        }
        else{
            outcome = "No, it is not 5";
            return outcome;
        }
    }

    // else if도 가능함
}