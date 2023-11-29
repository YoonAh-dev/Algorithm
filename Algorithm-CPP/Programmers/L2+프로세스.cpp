#include <algorithm>
#include <queue>
#include <string>
#include <vector>

using namespace std;

int solution(vector<int> priorities, int location) {
    queue<pair<int, int>> q;
    priority_queue<int> pq;
    int rank = 1;
    
    for(int i = 0; i < priorities.size(); i++) {
        q.push({priorities[i], i});
        pq.push(priorities[i]);
    }
    
    while(!q.empty()) {
        int top = pq.top(), priority = q.front().first, pairLocation = q.front().second;
        
        q.pop();
        
        if (priority != top) q.push({priority, pairLocation});
        else {
            pq.pop();
            if(location == pairLocation) return rank;
            else rank++;
        }
    }
    
    return rank;
}