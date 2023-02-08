#include <iostream>
#include <fstream>
#include <set>

using namespace std;

bool IsMarker(deque<char> &buffer);

int main() {
    ifstream file("input.txt");
    if (!file) {
        cout << "File not opened!";
        return 1;
    }

    deque<char> buffer;
    char tempC;
    int count = 0;
    bool popMode = false;
    while (file >> tempC) {
        count++;
        if (count == 5) {
            popMode = true;
        }
        if (popMode) {
            buffer.pop_front();
        }
        buffer.push_back(tempC);
        if (IsMarker(buffer)) {
            break;
        }
    }
    cout << "Part 1: " << count << endl;

    return 0;
}

bool IsMarker(deque<char> &buffer) {
    bool marker = false;
    set<char> test;
    for (auto c : buffer) {
        test.insert(c);
    }
    if (test.size() == 4) {
        marker = true;
    }
    return marker;
}
