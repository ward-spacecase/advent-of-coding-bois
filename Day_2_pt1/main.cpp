// This is part 1 of day 2
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int GetResult(char oppMove, char yourMove) {
    // Calculate points from your move
    int moveVal;
    switch (yourMove) {
        case 'X':
            moveVal = 1;
            break;
        case 'Y':
            moveVal = 2;
            break;
        case 'Z':
            moveVal = 3;
            break;
    }

    // Determine round outcome
    int outcomeVal;
    switch (oppMove) {
        case 'A':
            switch (yourMove) {
                case 'X':
                    outcomeVal = 3;
                    break;
                case 'Y':
                    outcomeVal = 6;
                    break;
                case 'Z':
                    outcomeVal = 0;
                    break;
            }
            break;
        case 'B':
            switch (yourMove) {
                case 'X':
                    outcomeVal = 0;
                    break;
                case 'Y':
                    outcomeVal = 3;
                    break;
                case 'Z':
                    outcomeVal = 6;
                    break;
            }
            break;
        case 'C':
            switch (yourMove) {
                case 'X':
                    outcomeVal = 6;
                    break;
                case 'Y':
                    outcomeVal = 0;
                    break;
                case 'Z':
                    outcomeVal = 3;
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
    int totalScore;
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
