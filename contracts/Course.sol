// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title Course contract
 * @notice A Course contract that holds a buleprint for a course 
 * @add github to the mix
 */

contract Course {


    struct CourseInformation {
        string courseName;
    }

    function addCourseInformation(
        string memory _courseName
    ) public {

    }

    Hole[] public hole;

    mapping(string => uint256) public holeToPinPosition;

    struct Hole {
        string name;
        uint256 pinPosition;
        uint256 rating;
        uint256 holeNumber;
    }

    function addHole(
        string memory _name,
        uint256 _pinPosition,
        uint256 _rating,
        uint256 _holeNumber
    ) public {
        hole.push(Hole(_name, _pinPosition, _rating, _holeNumber));
        holeToPinPosition[_name] = _pinPosition;
    }

}
