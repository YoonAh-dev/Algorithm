#include <iostream>
#include <vector>
using namespace std;

int main() {
    int num, total = 2, cnt = 0;
    cin >> num;

    for(int i = num / 2; i >= 1; i--) {
        int sum = 0;
        int temp = i;
        vector<int> res;

        for(int j = 0; j < total; j++) {
            res.push_back(temp);
            sum += temp;
            temp++;
        }

        if(sum < num) total++;
        else if(sum == num) {
            cout << res[0] << " ";
            for(int j = 1; j < res.size(); j++) {
                cout << "+ " << res[j] << " ";
            }
            cout << "= " << num << endl;
            cnt++;
        }
    }

    cout << cnt << endl;
}