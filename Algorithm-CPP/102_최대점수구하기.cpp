#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n, m, score, time;
    cin >> n >> m;
    vector<int> dy(m + 1);

    for(int i = 0; i < n; i++) {
        cin >> score >> time;

        for(int j = time; j <= m; j++) {
            if((j - time) != 0 && dy[j - time] == 0) continue;
            dy[j] = max(dy[j], dy[j - time] + score);
        }
    }

    cout << *max_element(dy.begin(), dy.end()) << endl;

    return 0;
}