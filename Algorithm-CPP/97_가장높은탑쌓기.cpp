#include <vector>
#include <iostream>
using namespace std;

struct Block {
    int bottom, height, weight;

    Block(int b, int h, int w) {
        bottom = b;
        height = h;
        weight = w;
    }

    bool operator<(Block const &b) const {
        return bottom > b.bottom;
    }
};

int main() {
    ios_base::sync_with_stdio(false);
    int n;
    cin >> n;

    vector<Block> block;
    vector<int> result(n);
    for(int i = 0; i < n; i++) {
        int bottom, height, weight;
        cin >> bottom >> height >> weight;
        block.push_back(Block(bottom, height, weight));
    }

    sort(block.begin(), block.end());

    result[0] = block[0].height;

    for(int i = 1; i < n; i++) {
        int maxHeight = 0;
        for(int j = i - 1; j >= 0; j--) {
            if(block[j].weight > block[i].weight && maxHeight < result[j]) {
                maxHeight = result[j];
            }
        }
        result[i] = maxHeight + block[i].height;
    }

    cout << *max_element(result.begin(), result.end()) << endl;

    return 0;
}