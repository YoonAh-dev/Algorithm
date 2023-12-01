#include <vector>
#include <iostream>
using namespace std;

int main() {
    ios_base::sync_with_stdio(false);
    int n;
    cin >> n;
    vector<int> right(n), result(n);
    for(int i = 0; i < n; i++) cin >> right[i];

    result[0] = 1;

    for(int i = 1; i < n; i++) {
        int maxCount = 0;
        for(int j = i - 1; j >= 0; j--) {
            if (right[j] < right[i] && result[j] > maxCount) {
                maxCount = result[j];
            }
        }
        result[i] = maxCount + 1;
    }

    cout << *max_element(result.begin(), result.end()) << endl;

    return 0;
}