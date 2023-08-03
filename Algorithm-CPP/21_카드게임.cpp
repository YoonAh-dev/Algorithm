#include <iostream>
using namespace std;

int main() {
    int arrA[10], arrB[10];
    char winners[10];
    int cntA = 0, cntB = 0, cntD = 0;

    for(int i = 0; i < 10; i++) {
        cin >> arrA[i];
    }

    for(int i = 0; i < 10; i++) {
        cin >> arrB[i];
    }

    for(int i = 0; i < 10; i++) {
        if (arrA[i] > arrB[i]) {
            cntA++;
            winners[i] = 'A';
        } else if (arrB[i] > arrA[i]) {
            cntB++;
            winners[i] = 'B';
        } else {
            cntD++;
            winners[i] = 'D';
        }
    }

    if (cntD == 10) {
        cout << "10 10" << endl;
        cout << 'D' << endl;
        return 0;
    }

    int scoreA = cntA * 3 + cntD * 1;
    int scoreB = cntB * 3 + cntD * 1;
    cout << scoreA << " " << scoreB << endl;

    if (cntA > cntB) {
        cout << 'A' << endl;
    } else if (cntB > cntA) cout << 'B' << endl;
    else {
        for(int i = 9; i >= 0; i--) {
            if(winners[i] != 'D') {
                cout << winners[i] << endl;
                break;
            }
        }
    }

    return 0;
}