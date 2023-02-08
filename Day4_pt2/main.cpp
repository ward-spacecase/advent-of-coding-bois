#include <iostream>
#include <fstream>

using namespace std;

int main() {
    ifstream file("input.txt");
    if (!file) {
        cout << "File is not open!\n";
        return 1;
    }

    int tally = 0;
    int line = 1;
    while (!file.eof()) {
        int firstLow;
        int firstHigh;
        int secLow;
        int secHigh;

        file >> firstLow;
        file.ignore(1);
        file >> firstHigh;
        file.ignore(1);
        file >> secLow;
        file.ignore(1);
        file >> secHigh;
        while(isspace(file.peek())) {
            file.ignore();
        }

        if (firstHigh >= secLow && firstLow <= secHigh) {
            tally++;
        }
        else {
        }
        line++;
    }
    cout << "The total number of pairs who's assignment is fully contained or overlapped by the other: " << tally << endl;

    return 0;
}
