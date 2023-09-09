#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
int arr[101];

struct Node {
    int start, end, cost;
    Node(int s, int e, int c) {
        start = s;
        end = e;
        cost = c;
    }

    bool operator<(Node const &n) const {
        return cost < n.cost;
    }
};

int Find(int v) {
    if(v == arr[v]) return v;
    else return Find(arr[v]);
}

bool Union(int a, int b) {
    a = Find(a);
    b = Find(b);
    if(a != b) {
        arr[a] = b;
        return true;
    } else {
        return false;
    }
}

int main() {
    freopen("input.txt", "rt", stdin);

    int v, e, row, col, cost, sum = 0;
    vector<Node> n;
    cin >> v >> e;
    for(int i = 1; i < v; i++) {
        arr[i] = i;
    }

    for(int i = 0; i < e; i++) {
        cin >> row >> col >> cost;
        n.push_back(Node(row, col, cost));
    }

    sort(n.begin(), n.end());

    for(int i = 0; i < n.size(); i++) {
        if(Union(n[i].start, n[i].end)) sum += n[i].cost;
    }

    cout << sum << endl;
    return 0;
}