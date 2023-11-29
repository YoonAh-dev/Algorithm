#include <algorithm>
#include <vector>
using namespace std;

int solution(vector<int> people, int limit) {
    int result = 0, start = 0, end = people.size() - 1;

    sort(people.begin(), people.end());

    while (start <= end) {
        int minWeight = people[start];
        int maxWeight = people[end];

        if (minWeight + maxWeight > limit) {
            result++;
            end--;
        } else {
            result++;
            start++;
            end--;
        }
    }

    return result;
}