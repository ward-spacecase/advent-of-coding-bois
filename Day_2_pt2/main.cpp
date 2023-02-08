// This is part 2 of day 2
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int GetResult(char oppMove, char yourMove) {

    // Determine round outcome
    int moveVal;
    int outcomeVal;
    switch (oppMove) {
        case 'A':
            switch (yourMove) {
                case 'X':
                    outcomeVal = 0;
                    moveVal = 3;
                    break;
                case 'Y':
                    outcomeVal = 3;
                    moveVal = 1;
                    break;
                case 'Z':
                    outcomeVal = 6;
                    moveVal = 2;
                    break;
            }
            break;
        case 'B':
            switch (yourMove) {
                case 'X':
                    outcomeVal = 0;
                    moveVal = 1;
                    break;
                case 'Y':
                    outcomeVal = 3;
                    moveVal = 2;
                    break;
                case 'Z':
                    outcomeVal = 6;
                    moveVal = 3;
                    break;
            }
            break;
        case 'C':
            switch (yourMove) {
                case 'X':
                    outcomeVal = 0;
                    moveVal = 2;
                    break;
                case 'Y':
                    outcomeVal = 3;
                    moveVal = 3;
                    break;
                case 'Z':
                    outcomeVal = 6;
                    moveVal = 1;
                    break;
            }
            break;
    }
    return moveVal + outcomeVal;
}

int main() {
    ifstream file("input.txt");
    char col1;
    char col2;
    int roundScore;
    int totalScore = 0;
    while(!file.eof()) {
        file >> col1 >> col2;
        if (file.eof()) {
            break;
        }
        cout << col1 << " " << col2 << endl;
        roundScore = GetResult(col1, col2);
        totalScore += roundScore;
    }
    cout << "Your total score will be: " << totalScore << endl;

    return 0;
}
