#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;

    int arr1[n];
    for(int i = 0; i < n; i++) cin >> arr1[i];

    int m;
    cin >> m;

    int arr2[m];
    for(int i = 0; i < m; i++) cin >> arr2[i];

    int top1 = 0, top2 = 0, index = 0, res[n + m];
    while(!(top1 == n && top2 == m)) {
        if(top1 == n) {
            for(int i = top2; i < m; i++) res[index++] = arr2[i];
            break;
        } else if(top2 == m) {
            for(int i = top1; i < n; i++) res[index++] = arr1[i];
            break;
        }

        if(arr1[top1] > arr2[top2]) res[index++] = arr2[top2++];
        else res[index++] = arr1[top1++];
    }

    for(int i = 0; i < n + m; i++) cout << res[i] << " ";

    return 0;
}