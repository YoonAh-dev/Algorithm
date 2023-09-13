#include <iostream>
#include <vector>
using namespace std;
int n, m, minD = 2147000000;
vector<pair<int, int>> mapp, maph;
int ch[50];

void dfs(int s, int L) {
    if(L == m) {
        int sum = 0;
        for(int i = 0; i < maph.size(); i++) {
            int dis = 2147000000;
            for(int j = 0; j < m; j++) {
                int res = abs(maph[i].first - mapp[ch[j]].first) + abs(maph[i].second - mapp[ch[j]].second);
                if(res < dis) dis = res;   
            }
            sum += dis;
        }
        if(sum < minD) minD = sum;
    } else {
        for(int i = s; i < mapp.size(); i++){
            ch[L] = i;
            dfs(i+1, L+1);
        }
    }
}


int main() {
    freopen("input.txt", "rt", stdin);

    cin >> n >> m;
    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            int input;
            cin >> input;
            if(input == 1) {
                maph.push_back({i, j});
            } else if(input == 2) {
                mapp.push_back({i, j});
            }
        }
    }

    dfs(0, 0);

    cout << minD << endl;
    return 0;
}