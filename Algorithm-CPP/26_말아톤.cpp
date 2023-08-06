#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;

    int players[n], ranks[n];
    for(int i = 0; i < n; i++) {
        cin >> players[i];
    }

    for(int i = 0; i < n; i++) {
        int cnt = 0;

        for(int j = 0; j < i; j++) {
            if(players[j] < players[i]) cnt++;
        }

        ranks[i] = (i + 1) - cnt;
    }

    for(int i = 0; i < n; i++) {
        cout << ranks[i] << " ";
    }

    return 0;
}