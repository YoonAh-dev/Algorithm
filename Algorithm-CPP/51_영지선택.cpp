#include <iostream>
using namespace std;

int main() {
    freopen("input.txt", "rt", stdin);

    int H, W, h, w, res = 0, max = 0;
    cin >> H >> W;

    int temp[H+1][W+1], terr[H+1][W+1];
    for(int i = 0; i <= H; i++) {
        for(int j = 0; j <= W; j++) {
            temp[i][j] = 0;
            terr[i][j] = 0;
        }
    }

    for(int i = 1; i <= H; i++) {
        for(int j = 1; j <= W; j++) {
            cin >> temp[i][j];
            terr[i][j] = terr[i - 1][j] + terr[i][j - 1] - terr[i - 1][j - 1] + temp[i][j];
        }
    }

    cin >> h >> w;

    for(int i = h; i <= H; i++) {
        for(int j = w; j <= W; j++) {
            res = terr[i][j] - terr[i - h][j] - terr[i][j - w] + terr[i - h][j - w];
            if(res > max) max = res;
        }
    }

    cout << max << endl;
}