#include <vector>

using namespace std;

int solution(int m, int n, vector<vector<int>> puddles) {
    vector<vector<int>> map(n + 1, vector<int> (m + 1, 0));
    
    for(auto puddle: puddles) 
        map[puddle[1]][puddle[0]] = -1;
    
    for(int i = 1; i <= n; i++) {
        for(int j = 1; j <= m; j++) {
            if(map[i][j] == -1) continue;
            
            if(i == 1 && j == 1) { map[1][1] = 1; continue; }
            
            if(map[i - 1][j] == -1) {
                map[i][j] = map[i][j - 1] % 1000000007;
            } else if(map[i][j - 1] == -1) {
                map[i][j] = map[i - 1][j] % 1000000007;
            } else {
                map[i][j] = (map[i - 1][j] + map[i][j - 1]) % 1000000007;   
            }
        }
    }
    
    return map[n][m];
}