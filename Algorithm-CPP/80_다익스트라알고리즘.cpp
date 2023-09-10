#include <iostream>
#include <vector>
#include <queue>
using namespace std;
int ch[100];

struct Edge {
    int node, cost;
    Edge(int n, int c) {
        node = n;
        cost = c;
    }

    bool operator<(Edge const &e) const {
        return cost > e.cost;
    }
};

int main() {
    freopen("input.txt", "rt", stdin);

    vector<pair<int, int>> map[21];
    priority_queue<Edge> pq;
    int dist[21];
    int n, m, start, end, cost;
    cin >> n >> m;

    for(int i = 1; i <= n; i++) {
        dist[i] = 2147000000;
    }

    for(int i = 0; i < m; i++) {
        cin >> start >> end >> cost;
        map[start].push_back({end, cost});
    }

    dist[1] = 0;
    pq.push(Edge(1, 0));

    while(!pq.empty()) {
        int node = pq.top().node, cost = pq.top().cost;
        pq.pop();

        if(ch[node] == 0) {
            ch[node] = 1;
            for(int i = 0; i < map[node].size(); i++) {
                if(dist[map[node][i].first] > cost + map[node][i].second) {
                    dist[map[node][i].first] = cost + map[node][i].second;
                    pq.push(Edge(map[node][i].first, cost + map[node][i].second));
                }
            }
        }
    }

    for(int i = 2; i <= n; i++) {
        if(dist[i] != 2147000000) cout << i << " : " << dist[i] << endl;
        else cout << i << " : " << "impossible" << endl;
    }

    return 0;
}