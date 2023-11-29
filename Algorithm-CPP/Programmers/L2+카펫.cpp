#include <vector>
using namespace std;

vector<pair<int, int>> factor(int num) {
    vector<pair<int, int>> nums;
	for (int i = 1; i * i <= num; i++) {
		if (num % i == 0) {
			nums.push_back({i, num/i});
		}
	}
    return nums;
}

vector<int> solution(int brown, int yellow) {
    int total = brown + yellow;
    vector<pair<int, int>> factors = factor(total);
    
    for(auto factor: factors) {
        if ((factor.first - 2) * (factor.second - 2) == yellow) {
            return { factor.second, factor.first };
        }
    }
    
    return {};
}