#include <bits/stdc++.h>
using namespace std;

long long mindistance(vector<int> s) {
    sort(s.begin(), s.end());
    int mid = s[s.size() / 2];
    long long sum = 0;
    for (int x : s) sum += abs(mid - x);
    return sum;
}
int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    int t;
    cin >> t;
    while (t--) {
        int r;
        cin >> r;
        vector<int> s(r);
        for (int& x : s) cin >> x;
        cout << mindistance(s) << "\n";
    }
}
