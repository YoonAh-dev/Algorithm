#include <cmath>
#include <string>
#include <vector>

using namespace std;

vector<int> solution(vector<int> progresses, vector<int> speeds) {
    int cnt = 0, standard = 0;
    vector<int> days;
    vector<int> answer;
    
    for(int i = 0; i < progresses.size(); i++) {
        days.push_back(ceil((100 - progresses[i]) / (double)speeds[i]));
    }
    
    for(auto day: days) {
        if(day > standard) {
            answer.push_back(cnt);
            standard = day; cnt = 1;
        } else { cnt++; }
    }
    
    answer.push_back(cnt);
    answer.erase(answer.begin());
    
    return answer;
}