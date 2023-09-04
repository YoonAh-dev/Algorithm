#include <iostream>
using namespace std;
int arr[21][21], ch[21];
int minValue = 0;

void findMinCost(int l, int N, int sum) {
    if(l == N) {
        if(sum < minValue) minValue = sum; 
    } else {
        for(int i = 1; i <= N; i++) {
            if(ch[i] == 0 && arr[l][i] > 0) {
                ch[i] = 1;
                findMinCost(i, N, sum + arr[l][i]);
                ch[i] = 0;
            }
        }
    }
}

int main() {
    freopen("input.txt", "rt", stdin);

    int N, M;
    cin >> N >> M;

    for(int i = 1; i <= M; i++) {
        int row, col, cost;
        cin >> row >> col >> cost;
        arr[row][col] = cost;
        minValue += cost;
    }

    ch[1] = 1;
    findMinCost(1, N, 0);

    cout << minValue << endl;
    return 0;
}