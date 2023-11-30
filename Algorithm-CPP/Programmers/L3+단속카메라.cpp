#include <algorithm>
#include <vector>

using namespace std;

int solution(vector<vector<int>> routes) {
    int index = 0, camera = 0;
    
    sort(routes.rbegin(), routes.rend());
    
    while (index < routes.size()) {
        int moveIndex = index;
        int sstart = routes[index][0], send = routes[index][1];

        for(int i = index + 1; i < routes.size(); i++) {
            int cstart = routes[i][0], cend = routes[i][1];
            
            if ((cstart <= sstart && sstart <= cend) || (cstart <= send && send <= cend)) {
                moveIndex = i;
            } else { break; }
        }
        
        index = moveIndex + 1;
        
        camera++;
    }
    
    return camera;
}

// 이중 for문 없이 구현한 풀이

// #include <bits/stdc++.h>

// using namespace std;

// bool cmp(vector<int> a, vector<int> b) { return a[1] < b[1]; }

// int solution(vector<vector<int>> routes) {
//     int answer = 0;
//     int limit = -30001;
//     sort(routes.begin(), routes.end(), cmp);
//     for(int i = 0; i < routes.size(); i++){
//         if(limit < routes[i][0]){
//             answer++;
//             limit = routes[i][1];
//         }
//     }
//     return answer;
// }