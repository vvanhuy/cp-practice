#include <bits/stdc++.h>
using namespace std;
int cycle(int n) {
    int len = 1;
    while (n != 1) {
        if (n % 2 != 0) {
            n = 3 * n + 1;
            len++;
        } else {
            n = n / 2;
            len++;
        }
    }
    return len;
}
int cycle2(int i, int j) {
    int cyclemax = cycle(i);
    for (int g = i + 1; g <= j; g++) {
        if (cyclemax < cycle(g))
            cyclemax = cycle(g);
    }
    return cyclemax;
}
int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    int i, j;
    while (cin >> i >> j) {
        cout << i << " " << j << " " << cycle2(min(i, j), max(i, j)) << "\n";
    }
    return 0;
}
