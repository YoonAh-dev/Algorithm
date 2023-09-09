#include <iostream>
using namespace std;
int arr[1001];

int Find(int v) {
    if(v == arr[v]) return v;
    else return arr[v] = Find(arr[v]);
}

void Union(int a, int b) {
    a = Find(a);
    b = Find(b);
    if(a != b) arr[a] = b;
}

int main() {
    freopen("input.txt", "rt", stdin);

    int n, m, row, col, f1, f2;
    cin >> n >> m;

    for(int i = 1; i <= n; i++) {
        arr[i] = i;
    }

    for(int i = 0; i < m; i++) {
        cin >> row >> col;
        Union(row, col);
    }

    cin >> f1 >> f2;

    if(Find(f1) == Find(f2)) cout << "YES" << endl;
    else cout << "NO" << endl;

    return 0;
}