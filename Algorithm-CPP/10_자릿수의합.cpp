#include <iostream>
#include <algorithm>
using namespace std;

int digit_sum(int x) {
    int sum = 0;

    while(x != 0) {
        sum += x % 10;
        x /= 10;
    }

    return sum;
}

int main() {
    int n, result, maxValue = -99999999;
    int nums[100];
    
    cin >> n;

    for(int i=0; i<n; i++) {
        cin >> nums[i];
        int sum = digit_sum(nums[i]);

        if(sum > maxValue) {
            maxValue = digit_sum(nums[i]);
            result = nums[i];
        } else if(sum == maxValue && nums[i] > result) {
            result = nums[i];
        }
    }

    cout << result;

    return 0;
}