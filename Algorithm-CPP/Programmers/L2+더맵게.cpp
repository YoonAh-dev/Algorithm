#include <queue>
#include <vector>
using namespace std;

int solution(vector<int> scoville, int K) {
    priority_queue<int, vector<int>, greater<int>> pq;
    int cnt = 0;
    
    for(auto sco: scoville) { pq.push(sco); }
    
    while (pq.size() > 1) {
        if (pq.top() < K) {
            int first = pq.top(); pq.pop();
            int second = pq.top(); pq.pop();
            pq.push(first + (second * 2));
            cnt++;
        } else return cnt;
    }
    
    if (pq.top() >= K) return cnt;
    
    return -1;
}