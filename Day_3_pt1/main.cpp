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
        map<char,int> priorityVal;
        char lower = 'a';
        char upper = 'A';
        for (unsigned int a = 1; a <= 26; a++) {
            priorityVal.insert({lower,a});
            lower++;
        }
        for (unsigned int A = 27; A <= 52; A++) {
            priorityVal.insert({upper,A});
            upper++;
        }

        // Find common items in each sack and add the priority value to a sum
        int sum = 0;
        while (!file.eof()) {
            string currLine;
            int compartSize;
            int sackSize;
            set<char> itemsSeen;
            char commonItem;

            file >> currLine;
            if (currLine.empty()) {
                break;
            }
            cout << "Line is: " << currLine << endl;
            sackSize = currLine.size();
            compartSize = sackSize / 2;
            cout << "Contents separated: ";
            for (unsigned int i = 0; i < compartSize; i++) {
                itemsSeen.insert(currLine.at(i));
                cout << currLine.at(i);
            }
            cout << " ";
            for (unsigned int i = compartSize; i < sackSize; i++) {
                cout << currLine.at(i);
                if (itemsSeen.count(currLine.at(i))) {
                    commonItem = currLine.at(i);
                    // break;
                }
            }
            cout << endl;
            sum += priorityVal[commonItem];
            cout << "The common item is: " << commonItem << "\n\n";
        }
        cout << "The sum of the priority of all common items: " << sum << endl;
    }

    else {
        cout << "file could not be opened\n";
    }
    return 0;
}
