// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// linear search
contract lec24{

    event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["South Korea", "North Korea", "USA", "China", "Japan"];

    function linearSearch(string memory _search) public view returns(uint256, string memory){
        // string and string cannot be compared in Solidity.
        // string to bytes => bytes to hash
        for(uint256 i=0; i<countryList.length; i++){
            if(keccak256(bytes(countryList[i])) == keccak256(bytes(_search))){
                return (i, countryList[i]); //괄호 왜 해줌?!
            }
        }

        return(0, "Nothing");
    }
}