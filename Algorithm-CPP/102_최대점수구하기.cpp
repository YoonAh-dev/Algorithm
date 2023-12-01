#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    ios_base::sync_with_stdio(false);

    freopen("input.txt", "rt", stdin);

    int n, m, score, time;
    cin >> n >> m;
    vector<int> dy(m + 1);

    for(int i = 0; i < n; i++) {
        cin >> score >> time;

        for(int j = m; j >= 0; j--) {
            if(j == time) {
                dy[j] = max(dy[j], score);
                continue;
            }

            if(dy[j] > 0 && j + time <= m) {
                dy[j + time] = max(dy[j + time], dy[j] + score);     
            }
        }
    }

    cout << *max_element(dy.begin(), dy.end()) << endl;

    return 0;
}