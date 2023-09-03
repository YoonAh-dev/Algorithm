#include <iostream>
#include <vector>
using namespace std;

int cnt = 0;
int ch[21];

void find(int l, int n, vector<int> map[]) {
    if(l == n) cnt++;
    else {
        for(int i = 0; i < map[l].size(); i++) {
            if(ch[map[l][i]] == 0) {
                ch[l] = 1;
                find(map[l][i], n, map);
                ch[l] = 0;
            }
        }
    }
}

int main() {
    freopen("input.txt", "rt", stdin);

    int N, M;
    cin >> N >> M;
    vector<int> metrix[N+1];

    for(int i = 0; i < M; i++) {
        int row, col;
        cin >> row >> col;
        metrix[row].push_back(col);
    }

    find(1, N, metrix);

    cout << cnt << endl;
    return 0;
}