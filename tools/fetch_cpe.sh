#!/usr/bin/env bash
# Tải đề CPE về máy (dùng tools/fetch_uva.sh bên dưới).
#
#   ./tools/fetch_cpe.sh            → 49 bài 一顆星選集       (cpe/1star/)
#   ./tools/fetch_cpe.sh past 1     → đề thi cũ, mức 1 (dễ)   (cpe/past-exams/)
#   ./tools/fetch_cpe.sh past 2     → đề thi cũ, mức 2 (vừa)
#   ./tools/fetch_cpe.sh past 3     → đề thi cũ, mức 3 (khó)
#   ./tools/fetch_cpe.sh past 4     → đề thi cũ, mức 4 (rất khó)
#   ./tools/fetch_cpe.sh past all   → toàn bộ đề thi cũ
#
# Danh sách mã bài nằm trong cpe/past-exams/tier*.txt (xem cpe/past-exams/README.md).

root="$(cd "$(dirname "$0")/.." && pwd)"
fetch="$root/tools/fetch_uva.sh"

STAR49=(10041 10055 10035 100 10929 10101 10420
        10008 10222 11332 10252 490 272
        12019 10038 10056 10170 10268 10783 10812 11349 11461 11063 10071
        10093 948 10019 10931 11005
        10050 10193 10190 10235 10922 11417
        10908 10221 10642 10242
        10057 10062 299 10226
        10189 10409 10415 118 11150
        11321)

case "${1:-star}" in
  star) exec "$fetch" cpe/1star "${STAR49[@]}" ;;
  past)
    lvl="${2:-1}"; dir="$root/cpe/past-exams"
    if [[ "$lvl" == all ]]; then files=("$dir"/tier[1-4].txt); else files=("$dir/tier$lvl.txt"); fi
    for f in "${files[@]}"; do [[ -f "$f" ]] || { echo "Không có $f"; exit 1; }; done
    exec "$fetch" cpe/past-exams $(grep -hoE '^[0-9]+' "${files[@]}") ;;
  *) sed -n '2,10p' "$0"; exit 1 ;;
esac
