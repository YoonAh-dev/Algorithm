#include <iostream>
#include <vector>
#include <queue>
using namespace std;

int main() {
    ios_base::sync_with_stdio(false);

    freopen("input.txt", "rt", stdin);

    int n, m, start, end;
    cin >> n >> m;
    vector<vector<int>> map(n + 1, vector<int> (n + 1));
    vector<int> degree(n + 1);
    queue<int> q;

    for(int i = 0; i < m; i++) {
        cin >> start >> end;
        map[start][end] = 1;
        degree[end]++;
    }

    for(int i = 1; i <= n; i++) {
        if(degree[i] == 0) q.push(i);
    }

    while(!q.empty()) {
        int top = q.front();
        q.pop();

        cout << top << " ";

        for(int i = 1; i <= n; i++) {
            if(map[top][i] == 1) {
                map[top][i] = 0;
                degree[i]--;

                if(degree[i] == 0) q.push(i);
            }
        }
    }

    return 0;
}