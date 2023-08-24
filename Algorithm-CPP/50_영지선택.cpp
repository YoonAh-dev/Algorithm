#include <iostream>
using namespace std;

int main() {
    freopen("input.txt", "rt", stdin);

    int H, W;
    cin >> H >> W;

    int terr[H][W];
    for(int i = 0; i < H; i++) {
        for(int j = 0; j < W; j++) {
            cin >> terr[i][j];
        }
    }

    int h, w;
    cin >> h >> w;

    int max = 0;
    for(int i = 0; i < H; i++) {
        if(H - i < h) break;

        for(int j = 0; j < W; j++) {
            if(W - j < w) break;

            int sum = 0;
            for(int k = 0; k < h; k++) {
                for(int m = 0; m < w; m++) {
                    sum += terr[i + k][j + m];
                }
            }

            if(sum > max) max = sum;
        }
    }

    cout << max << endl;
}