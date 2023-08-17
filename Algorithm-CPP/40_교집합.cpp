#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n;
    cin >> n;

    int arr1[n];
    for(int i = 0; i < n; i++) cin >> arr1[i];
    for(int i = 1; i < n; i++) {
        for(int j = i; j > 0; j--) {
            if(arr1[j - 1] < arr1[j]) break;

            int temp = arr1[j];
            arr1[j] = arr1[j - 1];
            arr1[j - 1] = temp;
        }
    }

    int m;
    cin >> m;

    int arr2[m];
    for(int i = 0; i < m; i++) cin >> arr2[i];
    for(int i = 1; i < m; i++) {
        for(int j = i; j > 0; j--) {
            if(arr2[j - 1] < arr2[j]) break;

            int temp = arr2[j];
            arr2[j] = arr2[j - 1];
            arr2[j - 1] = temp;
        }
    }

    int i = 0, j = 0;
    vector<int> res;
    while(i != n && j != m) {
        if(arr1[i] == arr2[j]) {
            res.push_back(arr1[i]);
            i++; j++;
        } 
        else if(arr1[i] > arr2[j]) j++;
        else if(arr1[i] < arr2[j]) i++;
    }

    for(int i = 0; i < res.size(); i++) cout << res[i] << " ";
    
    return 0;
}