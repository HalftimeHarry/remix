// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title Course contract
 * @notice A Course contract that holds a buleprint for a course
 */

contract Course {
// I want to use this CourseInformation[0] to help when creating holes currently when
// adding a contract you must manually type in the name of the course each
// time this leeds to typos so hopfully you can figure out how to make consistant
// I feel the reason is that to enter strings and concat strings is difficult in solidity
    CourseInformation[] public courseName;

    function addCourseInformation(
        string memory _courseName
    ) public {
        // this only needs 1 string name example Morley Field it will be at index 0
        courseName.push(CourseInformation(_courseName));
    }

    struct CourseInformation {
        string courseName;
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
        // example Morley Field Hole 1
        string memory _name,
        uint256 _pinPosition,
        uint256 _rating,
        uint256 _holeNumber
    ) public {
        hole.push(Hole(_name, _pinPosition, _rating, _holeNumber));
        holeToPinPosition[_name] = _pinPosition;
    }

}