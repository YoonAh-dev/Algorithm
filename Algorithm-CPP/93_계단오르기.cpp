#include <iostream>
using namespace std;

int stairs[50];

int dfs(int n) {
    if(stairs[n] > 0) return stairs[n];
    if(n == 1 || n == 2) return n;
    else return stairs[n] = dfs(n - 2) + dfs(n - 1);
}

int main() {
    ios_base::sync_with_stdio(false);
    int n;
    cin >> n;
    cout << dfs(n) << endl;
    return 0;
}