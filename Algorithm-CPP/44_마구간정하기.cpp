#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int n, c;
    cin >> n >> c;

    int arr[n], distances[n-1], lt = 1, rt = 0, max = 0;
    for(int i = 0; i < n; i++) cin >> arr[i];
    sort(arr, arr+n);

    for(int i = 0; i < n - 1; i++) {
        distances[i] = arr[i + 1] - arr[i];
        rt += distances[i];
    }

    while(lt <= rt) {
        int mid = (lt + rt) / 2;
        int total = 0, cnt = 1, min = 1000000000;

        for(int i = 0; i < n - 1; i++) {
            if(distances[i] + total > mid) {
                cnt++;
                if(total < min) min = total;
                total = distances[i];
            } else {
                total += distances[i];
            }
        }

        if(total < min) min = total;

        if(cnt == c - 1) {
            rt = mid - 1;
            if(min > max) max = min;
        } else if(cnt < c - 1) rt = mid - 1;
        else lt = mid + 1;
    }

    cout << max << endl;

    return 0;
}