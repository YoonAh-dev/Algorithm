#include <iostream>
#include <vector>
using namespace std;

int minValue = 0;
int ch[21];

void findCost(int l, int n, int sum, vector<pair<int, int>> map[]) {
    if(l == n) {
        if(sum < minValue) minValue = sum;
    } else {
        for(int i = 0; i < map[l].size(); i++) {
            if(ch[map[l][i].first] == 0) {
                ch[map[l][i].first] = 1;
                findCost(map[l][i].first, n, sum + map[l][i].second, map);
                ch[map[l][i].first] = 0;
            }
        }
    }
}

int main() {
    freopen("input.txt", "rt", stdin);

    int N, M;
    cin >> N >> M;
    vector<pair<int, int>> map[N+1];
    for(int i = 1; i <= M; i++) {
        int row, col, cost;
        cin >> row >> col >> cost;
        map[row].push_back({col, cost});
        minValue += cost;
    }

    ch[1] = 1;
    findCost(1, N, 0, map);

    cout << minValue << endl;
    return 0;
}