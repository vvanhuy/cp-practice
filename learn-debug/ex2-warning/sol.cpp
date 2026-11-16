// Bài 2 - CẢNH BÁO (WARNING): code chạy được nhưng SAI
// Đề: dòng 1 là n, dòng 2 là n số nguyên. In ra có bao nhiêu số bằng 0.
// Nhiệm vụ: đọc kỹ các dòng "warning" khi compile, chúng chỉ thẳng vào lỗi.
#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    int cnt;
    for (int i = 1; i <= n; i++) {
        int x;
        cin >> x;
        if (x = 0) cnt++;
    }
    cout << cnt << '\n';
    return 0;
}
