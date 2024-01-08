#include <algorithm>
#include <vector>

using namespace std;

int solution(vector<int> money) {
    vector<int> result(money.size());
    
    result[0] = money[0];
    result[1] = max(money[0], money[1]);
    
    for(int i = 2; i < result.size() - 1; i++) {
        result[i] = max(result[i - 1], result[i - 2] + money[i]);
    }
    
    int firstMax = *max_element(result.begin(), result.end());
    
    result[0] = 0;
    result[1] = money[1];
    
    for(int i = 2; i < result.size(); i++) {
        result[i] = max(result[i - 1], result[i - 2] + money[i]);
    }
    
    int secondMax = *max_element(result.begin(), result.end());
    
    if(firstMax > secondMax) return firstMax;
    else return secondMax;
}