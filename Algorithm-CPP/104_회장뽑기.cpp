#include <iostream>
#include <vector>
#include <string>
using namespace std;

int main() {
    ios_base::sync_with_stdio(false);

    freopen("input.txt", "rt", stdin);

    int n, sNode, eNode, target = 1000, res;
    string ans = "";
    cin >> n;
    vector<vector<int>> map(n + 1, vector<int> (n + 1, 1000));
    for(int i = 1; i <= n; i++) map[i][i] = 0;

    while(true) {
        cin >> sNode >> eNode;
        if(sNode == -1) break;

        map[sNode][eNode] = 1;
        map[eNode][sNode] = 1;
    }

    for(int k = 1; k <= n; k++) {
        for(int i = 1; i <= n; i++) {
            for(int j = 1; j <= n; j++) {
                map[i][j] = min(map[i][j], map[i][k] + map[k][j]);
            }
        }
    }

    for(int i = 1; i <= n; i++) {
        int arrMax = 0;
        for(int j = 1; j <= n; j++) {
            if(map[i][j] != 1000 && arrMax < map[i][j]) {
                arrMax = map[i][j];
            }
        }

        if(arrMax < target) {
            target = arrMax;
            ans = to_string(i) + " ";
            res = 1;
        } else if(arrMax == target) {
            ans += to_string(i) + " ";
            res += 1;
        }
    }

    cout << target << " " << res << endl;
    cout << ans << endl;

    return 0;
}