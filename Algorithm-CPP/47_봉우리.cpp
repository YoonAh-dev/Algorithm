#include <iostream>
using namespace std;

int main() {
    // freopen("input.txt", "rt", stdin);

    int posX[] = {-1, 0, 1, 0};
    int posY[] = {0, -1, 0, 1};
    int n, cnt = 0;
    cin >> n;

    int arr[n][n];
    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            cin >> arr[i][j];
        }
    }

    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            int max = 0;
            for(int k = 0; k < 4; k++) {
                if((i + posX[k] >= 0) && (i + posX[k] < n) && (j + posY[k] >= 0) && (j + posY[k] < n)) {
                    if(arr[i + posX[k]][j + posY[k]] > max) {
                        max = arr[i + posX[k]][j + posY[k]];
                    }
                }
            }

            if(max < arr[i][j]) cnt++;
        }
    }

    cout << cnt << endl;

    return 0;
}