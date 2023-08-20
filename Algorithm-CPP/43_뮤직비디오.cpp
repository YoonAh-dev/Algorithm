#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n, m;
    cin >> n >> m;

    vector<int> arr(n);
    int sum = 0;
    for(int i = 0; i < n; i++) {
        cin >> arr[i];
        sum += arr[i];
    }

    int lt = 1, rt = sum, res = lt;
    while(lt <= rt) {
        int mid = (lt + rt) / 2;
        int total = 0, cnt = 0;

        for(int i = 0; i < n; i++) {
            if(total + arr[i] > mid) {
                cnt++; total = arr[i];
            } else total += arr[i];
        }

        if(mid >= *max_element(arr.begin(), arr.end()) && cnt <= m) {
            rt = mid - 1;
            res = mid;
        } else lt = mid + 1;
    }

    cout << res << endl;

    return 0;
}