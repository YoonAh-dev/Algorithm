#include <iostream>
using namespace std;

int dy[100];

int dfs(int n) {
    if (dy[n] > 0) return dy[n];
    if (n == 1 || n == 2)  return n;
    else  return dy[n] = dfs(n - 2) + dfs(n - 1);
}

int main() {
    ios_base::sync_with_stdio(false);
    int n;
    cin >> n;
    cout << dfs(n) << endl;
    return 0;
}