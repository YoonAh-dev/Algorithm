#include <iostream>
#include <vector>
using namespace std;
int n, maxvalue = 0;
vector<pair<int, int>> sc;

void DFS(int l, int sum) {
    if(l >= n) {
        if(sum > maxvalue) maxvalue = sum;
    } else {
        DFS(l + sc[l].first, sum + sc[l].second);
        DFS(l + 1, sum);
    }
}

int main() {
    freopen("input.txt", "rt", stdin);

    int t, p;
    cin >> n;
    for(int i = 0; i < n; i++) {
        cin >> t >> p;
        sc.push_back({t, p});
    }
    DFS(0, 0);

    cout << maxvalue << endl;
    return 0;
}