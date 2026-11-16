#!/usr/bin/env bash
# Tải đề UVa về máy, mỗi bài một thư mục, kèm sample và sol.cpp.
#
# Cách dùng (chạy ở thư mục gốc repo):
#   ./tools/fetch_uva.sh <thư_mục_đích> <mã_UVa> [mã_UVa ...]
#   ./tools/fetch_uva.sh cpe/past-exams $(cat cpe/past-exams/tier1.txt)
#
# Chạy lại an toàn: bài đã có thì bỏ qua; KHÔNG BAO GIỜ ghi đè sol.cpp / in.txt / out.txt.
# Mỗi bài tạo ra <thư_mục_đích>/uvaXXXXX/ gồm:
#   problem.pdf  problem.txt  in.txt  out.txt  sol.cpp

if [[ $# -lt 2 ]]; then
  echo "Cách dùng: ./tools/fetch_uva.sh <thư_mục_đích> <mã_UVa> [mã_UVa ...]"; exit 1
fi

root="$(cd "$(dirname "$0")/.." && pwd)"
base="$1"; shift
[[ "$base" = /* ]] || base="$root/$base"
template="$root/template.cpp"
command -v pdftotext >/dev/null || { echo "Thiếu pdftotext: sudo apt install poppler-utils"; exit 1; }

ok=0; fail=0; new=0; check=()
for id in "$@"; do
  [[ "$id" =~ ^[0-9]+$ ]] || continue
  dir="$base/uva$id"
  mkdir -p "$dir"

  # 1. Tải PDF (bỏ qua nếu đã có)
  if [[ ! -s "$dir/problem.pdf" ]]; then
    url="https://onlinejudge.org/external/$((id / 100))/$id.pdf"
    if ! curl -sSf -m 60 -o "$dir/problem.pdf" "$url"; then
      echo "❌ UVa $id: tải thất bại ($url)"; rm -f "$dir/problem.pdf"; fail=$((fail + 1)); continue
    fi
    new=$((new + 1))
    printf '.'
    sleep 1   # lịch sự với server UVa
  fi

  # 2. Đề dạng chữ
  [[ -s "$dir/problem.txt" ]] || pdftotext -layout "$dir/problem.pdf" "$dir/problem.txt"

  # 3. Trích Sample Input / Sample Output (chỉ khi chưa có file)
  if [[ ! -s "$dir/in.txt" && ! -s "$dir/out.txt" ]]; then
    awk '
      # Bỏ dòng chân trang PDF (đề dài nhiều trang) và các dòng trống ngay sau nó
      /Valladolid OJ:/ { skip = 2; next }
      skip > 0 && /^[[:space:]]*$/ { skip--; next }
      { skip = 0 }
      tolower($0) ~ /^[[:space:]]*sample input/  { mode = "in";  next }
      tolower($0) ~ /^[[:space:]]*sample output/ { mode = "out"; next }
      mode == "in"  { print > IN }
      mode == "out" { print > OUT }
    ' IN="$dir/in.txt" OUT="$dir/out.txt" "$dir/problem.txt"
    # Xóa ký tự xuống trang (\f), khoảng trắng cuối dòng và dòng trống thừa ở cuối file
    for f in "$dir/in.txt" "$dir/out.txt"; do
      [[ -f "$f" ]] || { : > "$f"; continue; }
      sed -i -e 's/\f//g' -e 's/[[:space:]]*$//' "$f"
      sed -i -e ':a' -e '/^\n*$/{$d;N;ba' -e '}' "$f"
    done
    [[ -s "$dir/in.txt" && -s "$dir/out.txt" ]] || check+=("$id")
  fi

  # 4. sol.cpp từ template (không bao giờ ghi đè)
  if [[ ! -e "$dir/sol.cpp" ]]; then
    title=$(head -1 "$dir/problem.txt" | sed -E 's/^[[:space:]]*[0-9]+[[:space:]]+//; s/[[:space:]]+$//')
    { printf '// UVa %s - %s\n// Ý tưởng:\n// Lỗi đã gặp:\n// Kết quả:\n' "$id" "$title"
      cat "$template"; } > "$dir/sol.cpp"
  fi
  ok=$((ok + 1))
done

[[ $new -gt 0 ]] && echo
echo "----------------------------------------"
echo "✅ Sẵn sàng $ok bài (tải mới $new), ❌ lỗi $fail bài  →  $base"
[[ ${#check[@]} -gt 0 ]] && echo "⚠️  Không tự trích được sample, cần copy tay từ problem.pdf: ${check[*]}"
echo "💡 Sample được trích tự động: luôn so lại in.txt/out.txt với problem.pdf trước khi làm."
