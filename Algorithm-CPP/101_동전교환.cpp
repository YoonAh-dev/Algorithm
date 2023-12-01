#include <iostream>
#include <vector>
using namespace std;

int main() {
    ios_base::sync_with_stdio(false);
    int n, price;
    cin >> n;
    int coin[n];
    for(int i = 0; i < n; i++) cin >> coin[i];
    cin >> price;
    vector<int> prices(price + 1);

    for(int i = 0; i < n; i++) {
        int money = coin[i];

        for(int j = money; j <= price; j++) {
            if(prices[j] == 0) {
                prices[j] = prices[j - money] + 1;
            } else {
                prices[j] = min(prices[j - money] + 1, prices[j]);
            }
        }        
    }

    cout << prices[price] << endl;

    return 0;
}