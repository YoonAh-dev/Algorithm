#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n, cnt = 0, max = 0;
    cin >> n;

    vector<int> arr(n);
    for(int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    for(int i = 0; i < n - 1; i++) {
        if(arr[i+1] - arr[i] >= 0) {
            cnt++;
            if(cnt > max) max = cnt;
        } 
        else cnt = 0;
    }

    if(max != 0) cout << max + 1 << endl;
    else cout << max << endl;

    return 0;
}