//SPDX-License-Identifier: MIT

//Defining Solidity version
pragma solidity >0.6.0;

//Declaring the contract
contract SimpleStorage
{
    // Defining a structure to store values of the student
    struct student {
        string name;
        uint256 roll;
    }

    //Assiging the structure to a variable
    student[] public Student;

    //Mapping the given string to a integer value
    mapping(string => uint256) public maptonum;

    //Creating a function to add students to the contract
    function addstud(string memory _name,uint256 _roll) public{
        Student.push(student(_name, _roll));
        maptonum[_name] = _roll;
    }
}
