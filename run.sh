#!/usr/bin/env bash
# Cách dùng: ./run.sh duong/dan/bai.cpp [in.txt] [out.txt]
if [[ $# -lt 1 ]]; then echo "Cách dùng: ./run.sh bai.cpp [in.txt] [out.txt]"; exit 1; fi

src="$1"
dir=$(dirname "$src"); name=$(basename "$src" .cpp)
in="${2:-$dir/in.txt}"; ans="${3:-$dir/out.txt}"
bin="$dir/$name.out"

g++ -std=c++17 -O2 -Wall -Wextra -fsanitize=address,undefined -DLOCAL "$src" -o "$bin" \
  || { echo "❌ Compile lỗi"; exit 1; }

if [[ ! -f "$in" ]]; then
  echo "(Không có $in → nhập tay, Ctrl+D để kết thúc)"; "$bin"; exit
fi

start=$(date +%s%N)
"$bin" < "$in" > "$dir/my.txt"; code=$?
end=$(date +%s%N)
echo "⏱  $(( (end - start) / 1000000 )) ms | exit code: $code"

if [[ -f "$ans" ]]; then
  if diff -Z "$dir/my.txt" "$ans" > /dev/null; then
    echo "✅ AC - khớp output mong đợi"
  else
    echo "❌ WA - khác ở:"
    diff -Z -u --label "của bạn" --label "đáp án" "$dir/my.txt" "$ans" | head -30
  fi
else
  cat "$dir/my.txt"
fi
