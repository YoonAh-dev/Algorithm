#include <iostream>
#include <queue>
using namespace std;
int ch[1001][1001];

int main() {
    freopen("input.txt", "rt", stdin);
    ios_base::sync_with_stdio(false);

    queue<pair<int, int>> q;
    bool checker = true;
    int dx[] = { -1, 0, 1, 0 }, dy[] = { 0, -1, 0, 1 };
    int m, n, res = 0, unto = 0;
    cin >> m >> n;
    int arr[m][n];
    for(int i = 0; i < m; i++) {
        for(int j = 0; j < n; j++) {
            cin >> arr[i][j];
            if(arr[i][j] == 1) q.push({i, j});
            if(arr[i][j] == 0) {
                checker = false; unto++;
            }
        }
    }

    if(checker == true) {
        cout << "0" << endl;
        return 0;
    }

    while(!q.empty()) {
        int x = q.front().first, y = q.front().second;
        q.pop();

        if(res < ch[x][y]) res = ch[x][y];

        for(int i = 0; i < 4; i++) {
            int xx = x + dx[i], yy = y + dy[i];
            if(xx >= 0 && xx < m && yy >= 0 && yy < n) {
                if(arr[xx][yy] == 0) {
                    unto--;
                    q.push({xx, yy});
                    arr[xx][yy] = 1;
                    ch[xx][yy] = ch[x][y] + 1;
                }
            }
        }
    }

    if(unto == 0) cout << res << endl;
    else cout << "-1" << endl;
    return 0;
}