#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int n, c;
    cin >> n >> c;

    int arr[n];
    for(int i = 0; i < n; i++) cin >> arr[i];
    sort(arr, arr+n);

    int lt = 1, rt = arr[n-1], res = 0;
    while(lt <= rt) {
        int mid = (lt + rt) / 2;
        int pos = arr[0], cnt = 1;

        for(int i = 1; i < n; i++) {
            if(arr[i] - pos >= mid) {
                cnt++;
                pos = arr[i];
            }
        }

        if(cnt >= c) {
            lt = mid + 1;
            res = mid;
        } else rt = mid - 1;
    }

    cout << res << endl;

    return 0;
}