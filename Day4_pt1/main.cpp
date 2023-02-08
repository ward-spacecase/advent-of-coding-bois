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
        file.ignore(1);

        if ((firstLow <= secLow && firstHigh >= secHigh) || (firstLow >= secLow && firstHigh <= secHigh)) {
            tally++;
        }
    }
    cout << "The total number of pairs who's assignment is fully contained by the other: " << tally << endl;

    return 0;
}
