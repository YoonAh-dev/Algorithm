#include <iostream>
using namespace std;

int dfs(int n, int m, int count) {
    if(m == count) { return 1; }
    return n * dfs(n - 1, m, count + 1);
}

int main() {
    int n, r;
    cin >> n >> r;
    cout << dfs(n, r, 0) / dfs(r, r, 0) << endl;
}