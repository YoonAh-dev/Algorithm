#include <vector>
#include <iostream>
using namespace std;

int main() {
    int total, limit;
    cin >> total >> limit;
    vector<int> dy(limit + 1);

    for(int i = 0; i < total; i++) {
        int weight, value;
        cin >> weight >> value;
        
        for(int j = weight; j <= limit; j++) {
            dy[j] = max(dy[j - weight] + value, dy[j]);
        }
    }

    cout << dy[limit] << endl;

    return 0;
}