#include <iostream>
#include <vector>
#include <queue>
using namespace std;
int ch[101];

struct Node {
    int node, cost;
    Node(int n, int c) {
        node = n;
        cost = c;
    }

    bool operator<(Node const &n) const {
        return cost > n.cost;
    }
};

int main() {
    freopen("input.txt", "rt", stdin);

    vector<pair<int, int>> input[101];
    priority_queue<Node> n;
    int v, e, row, col, cost, sum = 0;

    cin >> v >> e;
    for(int i = 0; i < e; i++) {
        cin >> row >> col >> cost;
        input[row].push_back({col, cost});
        input[col].push_back({row, cost});
    }

    n.push(Node(1, 0));

    while(!n.empty()) {
        Node top = n.top();
        int node = top.node, cost = top.cost;
        n.pop();

        if(ch[node] == 0) {
            sum += cost;
            ch[node] = 1;
        } else continue;

        for(int i = 0; i < input[node].size(); i++) {
            n.push(Node(input[node][i].first, input[node][i].second));
        }
    }

    cout << sum << endl;
    return 0;
}