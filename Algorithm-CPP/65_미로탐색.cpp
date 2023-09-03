#include <iostream>
using namespace std;
int cnt = 0;
int dx[] = {-1, 0, 1, 0};
int dy[] = {0, -1, 0, 1};

void find(int arr[7][7], int posX, int posY) {
    if(posX == 6 && posY == 6) cnt++;
    else {
        for(int i = 0; i < 4; i++) {
            int x = posX + dx[i];
            int y = posY + dy[i];
            if(x >= 0 && x < 7 && y >= 0 && y < 7) {
                if(arr[x][y] == 0) {
                    arr[posX][posY] = 1;
                    find(arr, x, y);
                    arr[posX][posY] = 0;
                }
            }
        }
    }
}

int main() {
    freopen("input.txt", "rt", stdin);

    int arr[7][7];
    for(int i = 0; i < 7; i++) {
        for(int j = 0; j < 7; j++) {
            cin >> arr[i][j];
        }
    }

    find(arr, 0, 0);

    cout << cnt << endl;
    return 0;
}