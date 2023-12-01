#include <iostream>
#include <vector>
using namespace std;

int main() {
    ios_base::sync_with_stdio(false);

    freopen("input.txt", "rt", stdin);

    int n, m, start, end, cost;
    cin >> n >> m;
    vector<vector<int>> map(n + 1, vector<int> (n + 1, 100));

    for(int i = 0; i < m; i++) {
        cin >> start >> end >> cost;
        map[start][end] = cost;
    }

    for(int k = 1; k <= n; k++) {
        for(int i = 1; i <= n; i++) {
            for(int j = 1; j <= n; j++) {
                if(i == j) map[i][j] = 0;
                if(map[i][k] == 100 || map[k][j] == 100) continue;
                map[i][j] = min(map[i][j], map[i][k] + map[k][j]);
            }
        }
    }

    for(int i = 1; i <= n; i++) {
        for(int j = 1; j <= n; j++) {
            if(map[i][j] == 100) cout << "M" << " ";
            else cout << map[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}