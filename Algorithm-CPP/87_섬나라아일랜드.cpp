#include <iostream>
#include <queue>
using namespace std;

int main() {
    freopen("input.txt", "rt", stdin);

    int dx[] = { -1, 0, 1, -1, 1, -1, 0, 1 };
    int dy[] = { -1, -1, -1, 0, 0, 1, 1, 1 };
    int n, cnt = 0;
    queue<pair<int, int>> q;
    cin >> n;

    int arr[n][n];
    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            cin >> arr[i][j];
        }
    }

    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            if(arr[i][j] == 1) {
                q.push({i, j});
                while(!q.empty()) {
                    pair<int, int> t = q.front();
                    int x = t.first, y = t.second;
                    q.pop();
                    arr[x][y] = 2;
                    for(int i = 0; i < 8; i++) {
                        if(x + dx[i] >= 0 && x + dx[i] < n && y + dy[i] >= 0 && y + dy[i] < n) {
                            if(arr[x + dx[i]][y + dy[i]] == 1) {
                                q.push({x + dx[i], y + dy[i]});
                            }
                        }
                    }
                }
                cnt++;
            }
        }
    }

    cout << cnt << endl;
    return 0;
}
