#include <iostream>
#include <vector>
using namespace std;

struct Edge {
    int start, end, cost;
    Edge(int s, int e, int c) {
        start = s;
        end = e;
        cost = c;
    }
};

int main() {
    freopen("input.txt", "rt", stdin);

    vector<Edge> v;
    vector<int> dist(101, 2147000000);
    int n, m, start, end, cost, front, back;
    cin >> n >> m;

    for(int i = 0; i < m; i++) {
        cin >> start >> end >> cost;
        v.push_back(Edge(start, end, cost));
    }

    cin >> front >> back;

    dist[front] = 0;

    for(int i = 1; i < n; i++) {
        for(int j = 0; j < v.size(); j++) {
            int s = v[j].start;
            int e = v[j].end;
            int c = v[j].cost;
            if(dist[s] != 2147000000 && dist[s] + c < dist[e]) {
                dist[e] = dist[s] + c;
            }
        }
    }

    for(int i = 0; i < v.size(); i++) {
        int s = v[i].start;
        int e = v[i].end;
        int c = v[i].cost;
        if(dist[s] != 2147000000 && dist[s] + c < dist[e]) {
            cout << "-1" << endl;
            return 0;
        }
    }

    cout << dist[back] << endl;
    return 0;
}