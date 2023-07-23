#include <iostream>
using namespace std;

int main(int argc, char** argv) {
    int n, m;
    int sum = 0;

    cin >> n >> m;

    for(int i=0; i<=n; i++) {
        if(i % m == 0) {
            sum += i;
        }
    }

    cout << sum << endl;
}