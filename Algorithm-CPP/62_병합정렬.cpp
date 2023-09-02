#include <iostream>
using namespace std;

void divide(int lt, int rt, int arr[]) {
    if(lt < rt) {
        int mid = (lt + rt) / 2, p1 = lt, p2 = mid + 1, p3 = lt;
        int temp[100];
        divide(lt, mid, arr);
        divide(mid + 1, rt, arr);

        while(p1 <= mid && p2 <= rt) {
            if(arr[p1] < arr[p2]) temp[p3++] = arr[p1++];
            else temp[p3++] = arr[p2++];
        }
        while(p1 <= mid) temp[p3++] = arr[p1++];
        while(p2 <= rt) temp[p3++] = arr[p2++];

        for(int i = lt; i <= rt; i++) arr[i] = temp[i];
    }
}

int main() {
    int n;
    cin >> n;
    int arr[n];
    for(int i = 0; i < n; i++) cin >> arr[i];

    divide(0, n - 1, arr);

    for(int i = 0; i < n; i++) cout << arr[i] << " ";
    cout << endl;
    return 0;
}