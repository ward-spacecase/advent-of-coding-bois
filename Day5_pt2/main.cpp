#include <iostream>
#include <fstream>
#include <vector>

using namespace std;

struct moveCommand {
    uint number, origin, destination;
};

int main() {
    ifstream file("input.txt");
    if (!file) {
        cout << "File not open!\n";
        return 1;
    }

    // Get Stacks and Container Move data respectively
    string line;
    vector<string> stackData, moveData;
    bool insertMoves = false;
    while (getline(file,line)) {
        if (line.empty()) {
            insertMoves = true;
            continue;
        }
        if (!insertMoves) {
            stackData.insert(stackData.begin(), line); // Insert in Reverse
            continue;
        }
        moveData.push_back(line);
    }

    // Process Stack Data to create Stacks
    vector<stack<char>> theStacks;
    for (uint l = 0; l < stackData.size(); l++) {
        int vecPos = 0;
        for (uint c = 1; c < stackData[l].size(); c+=4) {
            if (l == 0) {
                theStacks.emplace_back();
                continue;
            }
            if (!isalpha(stackData[l][c])) {
                vecPos++;
                continue;
            }
            theStacks[vecPos].push(stackData[l][c]);
            vecPos++;
        }
    }

    // Use Move Data to get Commands
    vector<moveCommand> commands;
    for (uint m = 0; m < moveData.size(); m++) {
        uint move = moveData[m].find("move");
        uint from = moveData[m].find("from");
        uint to = moveData[m].find("to");
        commands.emplace_back();
        commands[m].number = stoi(moveData[m].substr(move + 4,3));
        commands[m].origin = stoi(moveData[m].substr(from + 4,3)) - 1;
        commands[m].destination = stoi(moveData[m].substr(to + 2,3)) - 1;
    }

    // Use Move Data on Stacks to get final configuration
    for (auto com : commands) {
        deque<char> tempStack;
        for (uint i = 0; i < com.number; i++) {
            tempStack.push_front(theStacks[com.origin].top());
            theStacks[com.origin].pop();
        }
        for (auto c : tempStack) {
            theStacks[com.destination].push(c);
        }
    }

    cout << "Part2: ";
    for (auto st : theStacks) {
        cout << st.top();
    }



    return 0;
}
