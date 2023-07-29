#include <iostream>
using namespace std;

int main() {
    int nums[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    string n;

    cin >> n;

    for(int i=0; n[i] != '\0'; i++) {
        int index = n[i] - '0';
        nums[index]++;
    }
    
    int max = nums[0];
    int result = 0;

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