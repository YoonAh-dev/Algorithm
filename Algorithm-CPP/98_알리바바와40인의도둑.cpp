#include <vector>
#include <iostream>
using namespace std;

int main() {
    ios_base::sync_with_stdio(false);

    freopen("input.txt", "rt", stdin);

    int n;
    cin >> n;
    vector<vector<int>> map(n + 1, vector<int> (n + 1)), result(n + 1, vector<int> (n + 1));
    for(int i = 1; i <= n; i++) {
        for(int j = 1; j <= n; j++) {
            cin >> map[i][j];
        }
    }

    for(int i = 1; i <= n; i++) {
        for(int j = 1; j <= n; j++) {
            if (i == 1 && j == 1) { result[i][j] = map[i][j]; }
            
            if (result[i - 1][j] == 0 || result[i][j - 1] == 0) { 
                result[i][j] = max(result[i - 1][j], result[i][j - 1]) + map[i][j];
            } else {
                result[i][j] = min(result[i - 1][j], result[i][j - 1]) + map[i][j];
            }
        }
    }

    cout << result[n][n] << endl;

    return 0;
}