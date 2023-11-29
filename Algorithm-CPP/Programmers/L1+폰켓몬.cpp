#include <algorithm>
#include <vector>
using namespace std;

int solution(vector<int> nums) {
    int chooseCount = nums.size() / 2;
    
    sort(nums.begin(), nums.end());
    nums.erase(unique(nums.begin(), nums.end()), nums.end());
    
    if (nums.size() > chooseCount) return chooseCount;
    else return nums.size();
}