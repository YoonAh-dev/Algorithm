#include <iostream>
using namespace std;

int cnt = 0;
int arr[10];

void dfs(int l, int n, int m, int sum) {
    if(l == n) {
        if(sum == m) cnt++;
        return;
    } else {
        dfs(l + 1, n, m, sum);
        dfs(l + 1, n, m, sum - arr[l]);
        dfs(l + 1, n, m, sum + arr[l]);
    }
}

int main() {
    int n, m;
    cin >> n >> m;
    for(int i = 0; i < n; i++) cin >> arr[i];

    dfs(0, n, m, 0);

    if(cnt == 0) cout << "-1" << endl;
    else cout << cnt << endl;

    return 0;
}