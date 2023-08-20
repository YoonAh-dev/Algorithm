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
            total += arr[i];

            if(total == mid) {
                total = 0; cnt++;
            } else if(total > mid) {
                total = 0; cnt++; i--;
            }
        }

        if(total > 0) cnt++;

        if(cnt > m) lt = mid + 1;
        else if(cnt <= m) {
            rt = mid - 1;
            res = mid;
        }
    }

    cout << res << endl;

    return 0;
}