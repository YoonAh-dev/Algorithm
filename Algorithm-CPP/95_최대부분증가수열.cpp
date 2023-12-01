#include <vector>
#include <iostream>
using namespace std;

int main() {
    int n, input[1000];
    cin >> n;
    for(int i = 0; i < n; i++) cin >> input[i];

    vector<int> result(n);

    result[0] = 1;

    for(int i = 1; i < n; i++) {
        int maxCount = 0;
        for(int j = i - 1; j >= 0; j--) {
            if (input[j] < input[i] && result[j] > maxCount) { 
                maxCount = result[j]; 
            }
        }
        result[i] = maxCount + 1;
    }

    cout << *max_element(result.begin(), result.end()) << endl;

    return 0;
}