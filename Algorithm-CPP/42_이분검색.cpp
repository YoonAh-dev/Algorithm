#include <iostream>
using namespace std;

void swap(int arr[], int idx1, int idx2) {
    int temp = arr[idx1];
    arr[idx1] = arr[idx2];
    arr[idx2] = temp;
}

int Parition(int arr[], int left, int right) {
    int pivot = arr[left];
    int low = left + 1;
    int high = right;

    while(low <= high) {
        while(pivot > arr[low]) low++;
        while(pivot < arr[high]) high--;

        if(low <= high) swap(arr, low, high);
    }

    swap(arr, left, high);
    return high;
}

void quicksort(int arr[], int left, int right) {
    if(left <= right) {
        int pivot = Parition(arr, left, right);
        quicksort(arr, left, pivot - 1);
        quicksort(arr, pivot + 1, right);
    }
}

int main() {
    int n, m;
    cin >> n >> m;

    int arr[n];
    for(int i = 0; i < n; i++) cin >> arr[i];

    quicksort(arr, 0, n);

    for(int i = 0; i < n; i++) {
        if(arr[i] == m) {
            cout << i + 1 << endl;
            break;
        }
    }

    return 0;
}