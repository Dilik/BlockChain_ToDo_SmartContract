pragma solidity >=0.4.22;

contract TodoList{
    uint public taskCount = 0;

    struct Task{
         uint id;
         string content;
         bool completed;         
    }

    mapping(uint => Task) public tasks;

    constructor() public{
        createTask("Blockchain Smart Contract TODO List");
    }

    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
