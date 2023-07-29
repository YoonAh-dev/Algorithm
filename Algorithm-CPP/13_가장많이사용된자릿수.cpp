#include <iostream>
using namespace std;

int main() {
    int n, nums[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    cin >> n;

    while(n != 0) {
        int index = n % 10;
        n /= 10;
        nums[index]++;
    }

    int max = nums[0];
    int result;

    for(int i = 1; i<10; i++) {
        if(nums[i] > max) {
            max = nums[i];
            result = i;
        } else if(nums[i] == max) {
            result = i;
        }
    }

    cout << result << endl;

    return 0;
}