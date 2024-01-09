#include<vector>
#include<queue>
using namespace std;

struct Point {
    int y, x, cost;
    
    Point(int a, int b, int c) {
        y = a; x = b; cost = c;
    }
};

int solution(vector<vector<int> > maps) {
    queue<Point> q;
    int n = maps.size(), m = maps[0].size();
    
    q.push(Point(0, 0, 1));
    
    while(!q.empty()) {
        int y = q.front().y, x = q.front().x, cost = q.front().cost;
        q.pop();
        
        if((x < 0 || x >= m) || (y < 0 || y >= n)) continue;
        if(maps[y][x] == 0) continue;
        
        if(x == m - 1 && y == n - 1) return cost;
        
        maps[y][x] = 0;
        q.push(Point(y - 1, x, cost + 1));
        q.push(Point(y, x - 1, cost + 1));
        q.push(Point(y + 1, x, cost + 1));
        q.push(Point(y, x + 1, cost + 1));
    }
    
    return -1;
}