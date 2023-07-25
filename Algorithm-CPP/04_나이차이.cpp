#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int n, num;

    cin >> n;

    int ages[n];

    for(int i=0; i<n; i++) {
        cin >> num;
        ages[i] = num; 
    }

    cout << *max_element(ages, ages + n) - *min_element(ages, ages + n) << endl;

    return 0;
}