#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;

    int p2 = 1, p3 = 1, p5 = 1, index = 1;
    int arr[1501] = {0, 1};
    while(index < n) {
        int p2V = arr[p2] * 2, p3V = arr[p3] * 3, p5V = arr[p5] * 5;
        
        if(p2V < p3V && p2V < p5V) arr[++index] = arr[p2++] * 2;
        else if(p3V < p2V && p3V < p5V) arr[++index] = arr[p3++] * 3;
        else if(p5V < p2V && p5V < p3V) arr[++index] = arr[p5++] * 5;
        else if(p2V == p3V && p2V < p5V) {
            arr[++index] = arr[p2] * 2;
            p2++; p3++;
        } else if(p2V == p5V && p2V < p3V) {
            arr[++index] = arr[p2] * 2;
            p2++; p5++;
        } else if(p3V == p5V && p3V < p2V) {
            arr[++index] = arr[p3] * 3;
            p3++; p5++;
        } else if(p2V == p3V && p2V == p5V) {
            arr[++index] = arr[p2] * 2;
            p2++; p3++; p5++;
        }
    }

    cout << arr[n] << endl;

    return 0;
}