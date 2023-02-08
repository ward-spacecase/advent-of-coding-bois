#include <iostream>
#include <fstream>
#include <set>
#include <map>

using namespace std;

int main() {
    // Create file stream and open file
    ifstream file("input.txt");
    if (file) {
        // Create map holding priority values of items
        map<char, int> priorityVal;
        char lower = 'a';
        char upper = 'A';
        for (unsigned int a = 1; a <= 26; a++) {
            priorityVal.insert({lower, a});
            lower++;
        }
        for (unsigned int A = 27; A <= 52; A++) {
            priorityVal.insert({upper, A});
            upper++;
        }

        map<char, int> itemsSeen;
        char badge;
        int sum = 0;
        while (!file.eof()) {
            // Grab item contents from first elf in the group
            string line;
            file >> line;
            for (auto c: line) {
                if (!itemsSeen.count(c)) {
                    itemsSeen.insert({c,1});
                }
            }

            // Get item contents from second elf
            file >> line;
            for (auto c : line) {
                if (itemsSeen[c] == 1) {
                    itemsSeen[c] = 2;
                }
            }

            // Get item contents from third elf and determine what badge is
            file >> line;
            file.ignore(1);
            for (auto c : line) {
                if (itemsSeen[c] == 2) {
                    badge = c;
                    sum += priorityVal[c];
                    cout << "Badge item is: " << c << "\nRunning Sum: " << sum << endl;
                    itemsSeen.clear();
                    break;
                }
            }
        }
    }

    else {
        cout << "file could not be opened\n";
    }
    return 0;
}