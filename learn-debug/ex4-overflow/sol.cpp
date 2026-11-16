// Bài 4 - TRÀN SỐ (lỗi WA phổ biến nhất ở đề UVa)
// Đề: dòng 1 là n, dòng 2 là n số nguyên (mỗi số <= 2*10^9). In tổng của chúng.
// Nhiệm vụ: tìm dòng "runtime error: signed integer overflow" và hiểu vì sao.
#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    int sum = 0;
    for (int i = 0; i < n; i++) {
        int x;
        cin >> x;
        sum += x;
    }
    cout << sum << '\n';
    return 0;
}
