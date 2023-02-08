#include <iostream>
#include <fstream>
#include <sstream>

using namespace std;

int main() {

    // Open file with Elf Calorie Inventory
    ifstream elfInventory("input.txt");
    int num;
    int sum;
    int max1 = 0;
    int max2 = 0;
    int max3 = 0;
    stringstream line;

    while (!elfInventory.eof()) {
        elfInventory >> num;
        sum += num;
        elfInventory.ignore(1);
        if (isspace(elfInventory.peek()) || elfInventory.eof()) {
            cout << "Current sum: " << sum << endl;
            cout << "Current max 1,2, and 3: " << max1 << " | " << max2 << " | " << max3 << endl;
            if (sum > max1) {
                max3 = max2;
                max2 = max1;
                max1 = sum;
            }
            else if (sum > max2) {
                max3 = max2;
                max2 = sum;
            }
            else if (sum > max3) {
                max3 = sum;
            }
            sum = 0;
            cout << "New max 1,2, and 3: " << max1 << " | " << max2 << " | " << max3 << "\n\n";
            elfInventory.ignore(1);
        }
    }

    cout << "End of File reached\n";
    cout << "Elf with the most calories has: " << max1 << " calories\n";
    cout << "The top 3 are: " << max1 << " | " << max2 << " | " << max3 << endl;
    int total = max1 + max2 + max3;
    cout << "Total of all 3 is: " << total << endl;

    return 0;
}
