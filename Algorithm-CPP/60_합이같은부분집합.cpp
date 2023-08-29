#include <iostream>
using namespace std;

bool flag = false;

void dfs(int l, int n, int arr[], int ch[]) {
    if(l == n) {
        int sum1 = 0, sum2 = 0;
        for(int i = 0; i < n; i++) {
            if(ch[i] == 0) sum1 += arr[i];
            else sum2 += arr[i];
        }
        if(sum1 == sum2) flag = true;
        return;
    } else {
        ch[l] = 1;
        dfs(l + 1, n, arr, ch);
        ch[l] = 0;
        dfs(l + 1, n, arr, ch);
    }
}

int main() {
    int n;
    cin >> n;
    int arr[n], ch[n];
    for(int i = 0; i < n; i++) {
        cin >> arr[i];
        ch[i] = 0;
    }
    
    dfs(0, n, arr, ch);

    if(flag) cout << "YES" << endl;
    else cout << "NO" << endl;

    return 0;
}