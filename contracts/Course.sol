// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title Course contract
 * @notice A Course contract that holds a buleprint for a course
 */

contract Course {

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
    CourseInformation[] public courseName;

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