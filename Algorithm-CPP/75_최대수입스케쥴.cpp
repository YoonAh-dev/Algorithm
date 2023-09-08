#include <iostream>
#include <vector>
#include <queue>
#include <algorithm>
using namespace std;
struct Company {
    int money, day;

    Company(int m, int d) {
        money = m;
        day = d;
    }

    bool operator<(Company const &c) const {
        if(day != c.day) return day > c.day;
        if(money != c.money) return money > c.money;
        return false;
    }
};

int main() {
    freopen("input.txt", "rt", stdin);

    priority_queue<int> pq;
    vector<Company> company;
    int n, index = 0, sum = 0;
    cin >> n;

    for(int i = 0; i < n; i++) {
        int money, day;
        cin >> money >> day;
        company.push_back(Company(money, day));
    }

    sort(company.begin(), company.end());

    while(index < company.size()) {
        int day = company[index].day;
        pq.push(company[index++].money);

        if(index >= company.size()) break;

        while(true) {
            if(company[index].day == day) {
                pq.push(company[index++].money);
            } else break;
        }

        sum += pq.top();
        pq.pop();
    }

    cout << sum << endl;
    
    return 0;
}