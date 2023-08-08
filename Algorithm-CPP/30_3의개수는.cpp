#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int n, result = 0;
    cin >> n;

    int lt = -1, rt = -1;
    for(int i = 0; lt != 0; i++) {
        int current = (n % int(pow(10, i + 1))) / pow(10, i);
        lt = n / pow(10, i + 1);
        rt = n % int(pow(10, i));

        if(current > 3) result += (lt + 1) * pow(10, i);
        else if(current < 3) result += lt * pow(10, i);
        else result += lt * pow(10, i) + (rt + 1);
    }

    cout << result << endl;

    return 0;
}