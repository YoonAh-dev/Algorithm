#include <iostream>
using namespace std;

int main() {
    int n, rank = 1;
    cin >> n;

    int scores[n], ranks[n];
    for(int i = 0; i < n; i++) {
        cin >> scores[i];
        ranks[i] = 0;
    }

    while(rank < n + 1) {
        int cnt = 0;
        int max = *max_element(scores, scores + n);

        for(int i = 0; i < sizeof(scores)/sizeof(int); i++) {
            if(max == scores[i]) {
                ranks[i] = rank;
                scores[i] = -1;
                cnt++;
            }
        }

        rank += cnt;
    }

    for(int i = 0; i < n; i++) {
        cout << ranks[i] << " ";
    }

    return 0;
}