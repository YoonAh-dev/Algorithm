#include <iostream>
using namespace std;
int arr[21][21], ch[21];
int cnt = 0;

void find(int l, int n) {
    if(l == n) {
        cnt++;
        return;
    } else {
        for(int i = 1; i <= n; i++) {
            if(arr[l][i] == 1 && ch[i] == 0) {
                ch[i] = 1;
                find(i, n);
                ch[i] = 0;
            }
        }
    }
}

int main() {
    freopen("input.txt", "rt", stdin);

    int n, m;
    cin >> n >> m;
    for(int i = 0; i < m; i++) {
        int row, col;
        cin >> row >> col;
        arr[row][col] = 1;
    }

    ch[1] = 1;
    find(1, n);

    cout << cnt << endl;
    return 0;
}