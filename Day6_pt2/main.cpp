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
        buffer.push_back(tempC);
        if (count == 15) {
            popMode = true;
        }
        if (popMode) {
            buffer.pop_front();
            if (IsMarker(buffer)) {
                break;
            }
        }
    }
    cout << "Part 2: " << count << endl;

    return 0;
}

bool IsMarker(deque<char> &buffer) {
    bool marker = false;
    set<char> test;
    for (auto c : buffer) {
        test.insert(c);
    }
    if (test.size() == 14) {
        marker = true;
    }
    return marker;
}
