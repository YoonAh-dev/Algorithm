#include <iostream>
#include <queue>
using namespace std;
struct Company {
    int money, day;

    Company(int m, int d) {
        money = m;
        day = d;
    }

    bool operator<(Company const &c) const {
        if(day != c.day) return day > c.day;
        if(money != c.money) return money < c.money;
        return false;
    }
};

int main() {
    freopen("input.txt", "rt", stdin);

    priority_queue<Company> pq;
    int n, current = 0, sum = 0;
    cin >> n;

    for(int i = 0; i < n; i++) {
        int money, day;
        cin >> money >> day;
        pq.push(Company(money, day));
    }

    while(!pq.empty()) {
        Company c = pq.top();
        pq.pop();

        if(c.day != current) {
            current = c.day;
            sum += c.money;
        }
    }

    cout << sum << endl;
    return 0;
}