#include <iostream>
using namespace std;

void dfs(int l, int n, int ch[]) {
    if(l == n) {
        for(int i = 0; i < n; i++) {
            if(ch[i] == 1) cout << i + 1 << " ";
        }
        cout << endl;
        return;
    } else {
        ch[l] = 1;
        dfs(l + 1, n, ch);
        ch[l] = 0;
        dfs(l + 1, n, ch);
    }
}

int main() {
    int n;
    cin >> n;

    int arr[n];
    dfs(0, n, arr);
    return 0;
}