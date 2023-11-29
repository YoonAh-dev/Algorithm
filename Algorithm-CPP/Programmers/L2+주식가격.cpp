#include <queue>
#include <vector>
using namespace std;

vector<int> solution(vector<int> prices) {
    priority_queue<pair<int, int>> pq;
    vector<int> answer(prices.size());
    int index = 0;
    
    while(index < prices.size()) {
        // 주식 가격 하락
        while(!pq.empty() && pq.top().first > prices[index]) {
            int arrIndex = pq.top().second;
            pq.pop();
            answer[arrIndex] = index - arrIndex;
        }
        
        // 새로운 가격 추가
        pq.push({prices[index], index});
        index++;
    }
    
    while(!pq.empty()) {
        int arrIndex = pq.top().second;
        pq.pop();
        answer[arrIndex] = (prices.size() - 1) - arrIndex;
    }
    
    return answer;
}