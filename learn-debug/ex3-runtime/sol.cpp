// Bài 3 - RUNTIME ERROR (RE)
// Đề: dòng 1 là n, dòng 2 là n số. In dãy số theo thứ tự ngược lại.
// Nhiệm vụ: compile không báo gì, nhưng chạy thì crash. Đọc khối chữ đỏ, tìm "sol.cpp:SỐ_DÒNG".
#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    vector<int> a(n);
    for (int i = 0; i < n; i++) cin >> a[i];

    for (int i = n; i >= 0; i--) {
        cout << a[i] << ' ';
    }
    cout << '\n';
    return 0;
}
