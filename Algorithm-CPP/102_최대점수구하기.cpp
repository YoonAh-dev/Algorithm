#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

bool cmp(pair<int, int> a, pair<int, int> b) { 
    if(a.second == b.second) return a.first > b.first;
    else return a.second > b.second; 
}

int main() {
    ios_base::sync_with_stdio(false);

    freopen("input.txt", "rt", stdin);

    int n, m, score, time;
    cin >> n >> m;
    vector<int> dy(m + 1);
    vector<pair<int, int>> times;

    for(int i = 0; i < n; i++) {
        cin >> score >> time;
        times.push_back({ score, time });
    }

    sort(times.begin(), times.end(), cmp);

    for(int i = 0; i < times.size(); i++) {
        int currentScore = times[i].first, currentTime = times[i].second;

        for(int j = m; j >= 0; j--) {
            if(j == currentTime) {
                dy[j] = max(dy[j], dy[j - currentTime] + currentScore);
                continue;
            }
            
            if(dy[j] > 0 && j + currentTime <= m) {
                dy[j + currentTime] = max(dy[j + currentTime], dy[j] + currentScore);     
            }
        }
    }

    cout << *max_element(dy.begin(), dy.end()) << endl;

    return 0;
}