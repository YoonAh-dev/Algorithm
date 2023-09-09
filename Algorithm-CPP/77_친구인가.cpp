#include <iostream>
#include <vector>
using namespace std;
int ch[1001];
vector<int> map[1001];
bool flag = false;

void dfs(int l, int n) {
    if(flag == true) return;
    if(l == n) flag = true;
    else {
        for(int i = 0; i < map[l].size(); i++) {
            if(ch[map[l][i]] == 0) {
                ch[map[l][i]] = 1;
                dfs(map[l][i], n);
                ch[map[l][i]] = 0;
            }
        }
    }
}

int main() {
    freopen("input.txt", "rt", stdin);

    int n, m, row, col, f1, f2;
    cin >> n >> m;
    for(int i = 0; i < m; i++) {
        cin >> row >> col;
        map[row].push_back(col);
        map[col].push_back(row);
    }
    cin >> f1 >> f2;

    dfs(f1, f2);

    if(flag == true) cout << "YES" << endl;
    else cout << "NO" << endl;

    return 0;
}