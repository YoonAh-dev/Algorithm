#include <iostream>
#include <queue>
using namespace std;
int ch[25][25];

struct Point {
    int x, y, size, dis;
    Point(int a, int b, int c, int d) {
        x = a;
        y = b;
        size = c;
        dis = d;
    }

    bool operator<(Point const &p) const {
        if(dis == p.dis) {
            if(x == p.x) return y > p.y;
            else return x > p.x;
        } else return dis > p.dis;
    }
};

int main() {
    freopen("input.txt", "rt", stdin);

    int dx[] = { -1, 0, 1, 0 }, dy[] = { 0, -1, 0, 1 };
    int n, tmpSize = 0, res = 0;
    Point simba = Point(0, 0, 0, 0);
    priority_queue<Point> q;
    cin >> n;
    int map[n][n];
    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            cin >> map[i][j];
            if(map[i][j] == 9) {
                simba = Point(i, j, 2, 0);
                map[i][j] = 0;
            }
        }
    }
    
    q.push(simba);

    while(!q.empty()) {
        int x = q.top().x, y = q.top().y, s = q.top().size, d = q.top().dis;
        q.pop();

        if(map[x][y] != 0 && map[x][y] < simba.size) {
            map[x][y] = 0;
            tmpSize++;
            if(tmpSize == simba.size) {
                simba.size++;
                tmpSize = 0;
            }
            simba = Point(x, y, simba.size, d);
            for(int i = 0; i < n; i++) {
                for(int j = 0; j < n; j++) {
                    ch[i][j] = 0;
                }
            }
            while(!q.empty()) q.pop();
            res = d;
        }

        for(int i = 0; i < 4; i++) {
            int xx = x + dx[i];
            int yy = y + dy[i];
            if(xx < 0 || xx > n - 1 || yy < 0 || yy > n - 1 || map[xx][yy] > simba.size || ch[xx][yy] > 0) continue;
            q.push(Point(xx, yy, map[xx][yy], d + 1));
            ch[xx][yy] = 1;
        }
    }

    cout << res << endl;

    return 0;
}