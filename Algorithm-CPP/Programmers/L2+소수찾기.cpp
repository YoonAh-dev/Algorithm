#include <algorithm>
#include <string>
#include <vector>
#include <set>
using namespace std;

int check[] = { -1, -1, -1, -1, -1, -1, -1 };
int choose[] = { -1, -1, -1, -1, -1, -1, -1 };
vector<int> nums;
set<int> decimal;

bool isPrime(int num) {
    if(num < 2) { return false; }

    for(int i = 2; i * i <= num; i++) {
        if(num % i == 0) {
            return false;
        }
    }

    return true;
}

void dfs(int l, int n) {
    if (l == n) {
        string str = "";
        for(int i = 0; i < n; i++) {
            if (check[i] != -1) {
                str += to_string(check[i]);
            }
        }
        if (str == "") { return; }
        int result = stoi(str);
        if (isPrime(result)) { decimal.insert(result); }
    } else {
        for(int i = 0; i < n; i++) {
            if(choose[i] == 1) { continue; }
            dfs(l + 1, n);
            check[l] = nums[i];
            choose[i] = 1;
            dfs(l + 1, n);
            check[l] = -1;
            choose[i] = 0;
        }
    }
}

int solution(string numbers) {
    for(auto n: numbers) nums.push_back(n - '0');
    dfs(0, nums.size());
    return decimal.size();
}