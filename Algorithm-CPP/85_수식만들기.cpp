#include <iostream>
using namespace std;
int n, arr[10], oper[4];
int minvalue = 2147000000, maxvalue = -2147000000;

void dfs(int l, int res) {
    if(l == n) {
        if(res > maxvalue) maxvalue = res;
        if(res < minvalue) minvalue = res;
    } else {
        for(int i = 0; i < 4; i++) {
            if(oper[i] > 0) {
                oper[i]--;
                switch(i) {
                    case 0: dfs(l+1, res+arr[l]); break;
                    case 1: dfs(l+1, res-arr[l]); break;
                    case 2: dfs(l+1, res*arr[l]); break;
                    case 3: dfs(l+1, res/arr[l]); break;
                }
                oper[i]++;
            }
        }
    }
}

int main() {
    cin >> n;
    for(int i = 0; i < n; i++) cin >> arr[i];
    for(int i = 0; i < 4; i++) cin >> oper[i];

    dfs(1, arr[0]);

    cout << maxvalue << endl;
    cout << minvalue << endl;
    return 0;
}