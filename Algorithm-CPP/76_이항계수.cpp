#include <iostream>
using namespace std;

int dfs(int n, int m) {
    if(n == m) { return m; }
    return n * dfs(n - 1, m);
}

int main() {
    int n, r;
    cin >> n >> r;
    cout << dfs(n, r) / dfs(r, 1) << endl;
}