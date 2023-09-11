#include <iostream>
using namespace std;
int n, r, cnt = 0;
int arr[16], ch[16], res[16];

void DFS(int l) {
    if(l == r) {
        for(int i = 0; i < r; i++) {
            cout << res[i] << " ";
        }
        cnt++;
        puts("");
    } else {
        for(int i = 1; i <= n; i++) {
            if(ch[i] == 0) {
                res[l] = arr[i];
                ch[i] = 1;
                DFS(l + 1);
                ch[i] = 0;
            }
        }
    }
}

int main() {
    cin >> n >> r;
    for(int i = 1; i <= n; i++) {
        cin >> arr[i];
    }
    DFS(0);
    cout << cnt << endl;
    return 0;
}