// Bài 6 - VÒNG LẶP VÔ HẠN (trên judge sẽ là TLE)
// Đề: mỗi dòng 1 số nguyên không âm n, đọc đến EOF. In số chữ số của n.
// Nhiệm vụ: chạy sẽ bị TREO. Bấm Ctrl+C để dừng. Sau đó tìm lỗi bằng warning + debugger.
//          Sửa xong còn 1 lỗi nữa, test cuối sẽ lộ ra.
#include <bits/stdc++.h>
using namespace std;

int main() {
    long long n;
    while (cin >> n) {
        int cnt = 0;
        while (n != 0) {
            cnt++;
            n / 10;
        }
        cout << cnt << '\n';
    }
    return 0;
}
