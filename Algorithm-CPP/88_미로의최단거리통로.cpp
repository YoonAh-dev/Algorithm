#include <iostream>
#include <queue>
using namespace std;

struct Point {
    int x, y, cost;
    Point(int a, int b, int c) {
        x = a;
        y = b;
        cost = c;
    }
};

int main() {
    freopen("input.txt", "rt", stdin);

    queue<Point> q;
    int dx[] = { -1, 0, 1, 0 }, dy[] = { 0, -1, 0, 1};
    int arr[7][7];
    int min = 2147000000;
    for(int i = 0; i < 7; i++) {
        for(int j = 0; j < 7; j++) {
            cin >> arr[i][j];
        }
    }

    q.push(Point(0, 0, 0));

    while(!q.empty()) {
        Point t = q.front();
        q.pop();
        arr[t.x][t.y] = 1;

        if(t.x == 6 && t.y == 6) {
            if(min > t.cost) min = t.cost;
            continue;
        }

        for(int i = 0; i < 4; i++) {
            int x = t.x + dx[i], y = t.y + dy[i];
            if(x >= 0 && x < 7 && y >= 0 && y < 7) {
                if(arr[x][y] == 0) {
                    q.push(Point(x, y, t.cost + 1));
                }
            }
        }
    }

    if(min != 2147000000) cout << min << endl;
    else cout << "-1" << endl;
    return 0;
}