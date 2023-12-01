#include <vector>
#include <iostream>
using namespace std;

vector<vector<int>> map(21, vector<int> (21));
vector<vector<int>> result(21, vector<int> (21));

int dfs(int x, int y) {
    if(x < 1 || y < 1) return 100;
    if(result[x][y] > 0) return result[x][y];
    if(x == 1 && y == 1) return map[1][1];
    else return result[x][y] = min(dfs(x - 1, y), dfs(x, y - 1)) + map[x][y];
}

int main() {
    ios_base::sync_with_stdio(false);

    freopen("input.txt", "rt", stdin);

    int n;
    cin >> n;
    for(int i = 1; i <= n; i++) {
        for(int j = 1; j <= n; j++) {
            cin >> map[i][j];
        }
    }    
    cout << dfs(n, n) << endl;
    return 0;
}