#include <iostream>
using namespace std;

void dfs(int n, int m) {
    if(n > m) return;

    // cout << n << " "; <- 전위순회
    dfs(n * 2, m);
    // cout << n << " "; <- 중위순회
    dfs((n * 2 + 1), m);
    cout << n << " "; // 후위순회
}

int main() {
    int m;
    cin >> m;
    dfs(1, m);
    return 0;
}