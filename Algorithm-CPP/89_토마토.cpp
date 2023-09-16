#include <iostream>
#include <queue>
using namespace std;
int ch[1001][1001];

int main() {
    freopen("input.txt", "rt", stdin);

    queue<pair<int, int>> q;
    bool checker = true;
    int dx[] = { -1, 0, 1, 0 }, dy[] = { 0, -1, 0, 1 };
    int m, n, res = 0;
    cin >> m >> n;
    int arr[m][n];
    for(int i = 0; i < m; i++) {
        for(int j = 0; j < n; j++) {
            cin >> arr[i][j];
            if(arr[i][j] == 1) q.push({i, j});
            if(arr[i][j] == 0) checker = false;
        }
    }

    if(checker == true) {
        cout << "0" << endl;
        return 0;
    }

    while(!q.empty()) {
        int x = q.front().first, y = q.front().second;
        q.pop();

        for(int i = 0; i < 4; i++) {
            int xx = x + dx[i], yy = y + dy[i];
            if(xx >= 0 && xx < m && yy >= 0 && yy < n) {
                if(arr[xx][yy] == 0) {
                    q.push({xx, yy});
                    arr[xx][yy] = 1;
                    ch[xx][yy] = ch[x][y] + 1;
                }
            }
        }
    }

    for(int i = 0; i < m; i++) {
        for(int j = 0; j < n; j++) {
            if(arr[i][j] == 0) {
                cout << "-1" << endl;
                return 0;
            }

            if(res < ch[i][j]) res = ch[i][j];
        }
    }

    cout << res << endl;
    return 0;
}