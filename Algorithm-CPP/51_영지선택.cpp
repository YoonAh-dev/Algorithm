#include <iostream>
using namespace std;

int terr[702][702];

int main() {
    freopen("input.txt", "rt", stdin);

    int H, W, h, w, res = 0, max = 0;
    cin >> H >> W;

    for(int i = 1; i <= H; i++) {
        for(int j = 1; j <= W; j++) {
            int input;
            cin >> input;
            terr[i][j] = terr[i - 1][j] + terr[i][j - 1] - terr[i - 1][j - 1] + input;
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