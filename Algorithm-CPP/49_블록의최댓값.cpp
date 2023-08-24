#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;

    int front[n][n], side[n][n], res = 0;
    for(int i = 0; i < n; i++) {
        int input;
        cin >> input;
        for(int j = 0; j < n; j++) {
            front[j][i] = input;
        }
    }

    for(int i = 0; i < n; i++) {
        int input;
        cin >> input;
        for(int j = 0; j < n; j++) {
            side[i][j] = input;
        }
    }    

    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            res += min(front[i][j], side[i][j]);
        }
    }

    cout << res << endl;

    return 0;
}