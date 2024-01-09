#include <vector>
#include <queue>
using namespace std;

int solution(vector<vector<int>> rectangle, int characterX, int characterY, int itemX, int itemY) {
    vector<vector<int>> map(110, vector<int> (110, 0));
    characterX *= 2; characterY *= 2; itemX *= 2; itemY *= 2;
    
    for(int i = 0; i < rectangle.size(); i++) {
        int x1 = rectangle[i][0] * 2; int y1 = rectangle[i][1] * 2;
        int x2 = rectangle[i][2] * 2; int y2 = rectangle[i][3] * 2;
        
        for(int j = y1; j <= y2; j++) {
            for(int k = x1; k <= x2; k++) {
                map[j][k] = 1;
            }
        }
    }
    
    for(int i = 0; i < rectangle.size(); i++) {
        int x1 = rectangle[i][0] * 2; int y1 = rectangle[i][1] * 2;
        int x2 = rectangle[i][2] * 2; int y2 = rectangle[i][3] * 2;
        
        for(int j = y1 + 1; j < y2; j++) {
            for(int k = x1 + 1; k < x2; k++) {
                map[j][k] = 0;
            }
        }
    }
    
    int dy[] = {0, 0, 1, -1};
    int dx[] = {1, -1, 0, 0};
    queue<pair<int, int>> q;
    q.push({ characterY, characterX });
    
    while(!q.empty()) {
        int y = q.front().first;
        int x = q.front().second;
        q.pop();
        
        if(x == itemX && y == itemY) break;
        
        for(int i = 0; i < 4; i++) {
            int cx = x + dx[i], cy = y + dy[i];
            
            if(map[cy][cx] == 1) {
                map[cy][cx] = map[y][x] + 1;
                q.push({ cy, cx });
            }
        }
    }
    
    int answer = map[itemY][itemX] / 2;
    return answer;
}