#include <algorithm>
#include <vector>
using namespace std;

int solution(vector<vector<int>> triangle) {
    vector<vector<int>> result(500, vector<int> (500));
    
    for(int i = 0; i < triangle.size(); i++) {
        for(int j = 0; j < triangle[i].size() ; j++) {
            if(i == 0 && j == 0) { result[i][j] = triangle[i][j]; break; }
            
            if(j - 1 < 0) result[i][j] = result[i - 1][j] + triangle[i][j];
            else if(j >= triangle[i].size()) result[i][j] = result[i][j - 1] + triangle[i][j];
            else result[i][j] = max(result[i - 1][j - 1], result[i - 1][j]) + triangle[i][j];
        }
    }
    
    return *max_element(result[triangle.size() - 1].begin(), result[triangle.size() - 1].end());
}