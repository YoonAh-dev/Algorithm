#include <vector>
using namespace std;

vector<int> num;
int cnt = 0;

void dfs(int level, int result, int target) {
    if(level == num.size()) {
        if(result == target) cnt++;
    } else {
        dfs(level + 1, result - num[level], target);
        dfs(level + 1, result + num[level], target);
    }
}

int solution(vector<int> numbers, int target) {
    num = numbers;
    
    dfs(0, 0, target);
    
    return cnt;
}