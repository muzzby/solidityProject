pragma solidity ^0.8.0;

contract Ballot {

    struct Voter {
        //权重,可投和不可投 0 1
        uint weight;
        // 标记是否投过票
        bool voted;
        // 1号提案、2号提案（指代具体提案）
        uint8 vote;
        // 是否代理
        address delegate;

    }

    //某个提案获得了多少票
    struct Proposal {
        uint voteCount;
    }
    //记录每个提案的票数
    Proposal[] proposal;

    //主席（创始人）
    address chairperson;
    mapping(address => Voter) voters;

    //构造器，老式
    function Ballot(uint8 _numProposal) public {
        chairperson = msg.sender;
        voters[chairperson].weight = 1;
        proposals.length = _numProposal;
    }











}
