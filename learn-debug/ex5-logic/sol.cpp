// Bài 5 - LỖI LOGIC (WA): không cảnh báo, không crash, chỉ ra kết quả sai
// Đề: dòng 1 là n, dòng 2 là n số nguyên (có thể âm).
//     In số lớn nhất và trung bình cộng (2 chữ số thập phân), cách nhau 1 dấu cách.
// Nhiệm vụ: dùng DEBUGGER (F5) để tìm 2 lỗi. Đừng đoán, hãy nhìn giá trị biến.
#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    int mx = 0;
    int sum = 0;
    for (int i = 0; i < n; i++) {
        int x;
        cin >> x;
        sum += x;
        if (x > mx) mx = x;
    }
    double avg = sum / n;
    cout << mx << ' ' << fixed << setprecision(2) << avg << '\n';
    return 0;
}
