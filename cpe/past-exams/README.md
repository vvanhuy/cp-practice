# Đề thi CPE các kỳ trước

Nguồn: [cpe.mcu.edu.tw → 歷屆考試 → 歷次考題一覽](https://cpe.mcu.edu.tw/cpe/test_data/problems) — 52 kỳ thi, từ 2013-10-01 đến 2026-10-06, tổng cộng **341 bài UVa khác nhau**.

Dữ liệu đầy đủ (từng kỳ, từng bài, số người làm đúng): [`exams.json`](exams.json).

## Đọc số liệu

**F% = tỷ lệ thí sinh làm đúng bài đó** (trên tổng số người dự thi). F% càng cao thì bài càng dễ — đây là độ khó *thực tế*, đo trên hàng nghìn sinh viên Đài Loan.

Mỗi kỳ thi có 7 bài, xếp **từ dễ đến khó**:

| Vị trí | P1 | P2 | P3 | P4 | P5 | P6 | P7 |
|---|---|---|---|---|---|---|---|
| F% trung bình | 53% | 33% | 18% | 6% | 3% | 1% | 0.5% |

- Trung bình mỗi thí sinh chỉ làm đúng **0.65–1.55 bài** (10 kỳ gần nhất). **Làm đúng 2 bài là đã trên mức trung bình.**
- **Mọi kỳ thi (52/52) đều có đúng 1 bài lấy từ 一顆星選集**, luôn nằm ở vị trí P1, P2 hoặc P3.
- Trong 49 bài 1 sao, có 40 bài đã từng ra thi. Các bài 1 sao **không** có trong danh sách dưới đây (đã nằm ở `cpe/1star/`).
- Từ 2027, bài "chắc chắn có" sẽ lấy từ **CPE56選集** (chưa công bố danh sách). Các bài mức 1–2 dưới đây là nguồn luyện tốt nhất trong lúc chờ.

## Cách dùng

```bash
./tools/fetch_cpe.sh past 1     # tải đề mức 1 về cpe/past-exams/uvaXXXXX/
./tools/fetch_cpe.sh past 2     # mức 2 (3, 4, all tương tự)
./run.sh cpe/past-exams/uva10696/sol.cpp
```

Thứ tự gợi ý: **1 sao → mức 1 → mức 2** là đủ cho mục tiêu 2–3 bài. Mức 3–4 dành cho khi đã vững CTDL & GT.

Trạng thái: ⬜ chưa làm · 🟨 đang làm · ✅ AC. Cột *Đã ra thi*: tháng thi + vị trí bài trong đề.

## Mức 1 — Dễ (F ≥ 30%) · 53 bài

| # | UVa | Tên bài | F% | Đã ra thi | Trạng thái |
|---|---|---|---|---|---|
| 1 | [10696](https://vjudge.net/problem/UVA-10696) | f91 | 80.1 | 2026-10 P1 | ⬜ |
| 2 | [11934](https://vjudge.net/problem/UVA-11934) | Magic Formula | 77.8 | 2023-05 P1 | ⬜ |
| 3 | [11677](https://vjudge.net/problem/UVA-11677) | Alarm Clock | 76.7 | 2019-12 P1 | ⬜ |
| 4 | [11942](https://vjudge.net/problem/UVA-11942) | Lumberjack Sequencing | 70.2 | 2016-05 P1 | ⬜ |
| 5 | [11764](https://vjudge.net/problem/UVA-11764) | Cricket Field | 69.6 | 2016-03 P1 | ⬜ |
| 6 | [12250](https://vjudge.net/problem/UVA-12250) | Language Detection | 67.4 | 2024-12 P1 | ⬜ |
| 7 | [488](https://vjudge.net/problem/UVA-488) | Triangle Wave | 66.3 | 2018-03 P1 | ⬜ |
| 8 | [11498](https://vjudge.net/problem/UVA-11498) | Division of Nlogonia | 64.3 | 2020-06 P1 | ⬜ |
| 9 | [11455](https://vjudge.net/problem/UVA-11455) | Behold My Quadrangle | 63.3 | 2018-05 P1 | ⬜ |
| 10 | [11636](https://vjudge.net/problem/UVA-11636) | Hello World! | 63.0 | 2018-12 P1 | ⬜ |
| 11 | [11689](https://vjudge.net/problem/UVA-11689) | Soda Surpler | 62.1 | 2020-12 P1 | ⬜ |
| 12 | [1260](https://vjudge.net/problem/UVA-1260) | Sales | 61.4 | 2021-12 P1 | ⬜ |
| 13 | [591](https://vjudge.net/problem/UVA-591) | Box of Bricks | 60.8 | 2015-03 P1 | ⬜ |
| 14 | [382](https://vjudge.net/problem/UVA-382) | Perfection | 59.8 | 2024-12 P2 | ⬜ |
| 15 | [10079](https://vjudge.net/problem/UVA-10079) | Pizza Cutting | 59.3 | 2025-12 P1 | ⬜ |
| 16 | [11743](https://vjudge.net/problem/UVA-11743) | Credit Check | 58.1 | 2017-09 P1 | ⬜ |
| 17 | [10921](https://vjudge.net/problem/UVA-10921) | Find the Telephone | 57.7 | 2021-03 P2 | ⬜ |
| 18 | [1585](https://vjudge.net/problem/UVA-1585) | Score | 57.6 | 2015-05 P1 | ⬜ |
| 19 | [1225](https://vjudge.net/problem/UVA-1225) | Digit Counting | 57.4 | 2017-05 P1 | ⬜ |
| 20 | [11364](https://vjudge.net/problem/UVA-11364) | Parking | 56.6 | 2016-12 P1 | ⬜ |
| 21 | [12908](https://vjudge.net/problem/UVA-12908) | The book thief | 55.7 | 2022-03 P1 | ⬜ |
| 22 | [12602](https://vjudge.net/problem/UVA-12602) | Nice Licence Plates | 55.2 | 2013-12 P1 | ⬜ |
| 23 | [579](https://vjudge.net/problem/UVA-579) | ClockHands | 54.5 | 2014-09 P1 | ⬜ |
| 24 | [10327](https://vjudge.net/problem/UVA-10327) | Flip Sort | 53.4 | 2025-03 P2 | ⬜ |
| 25 | [11000](https://vjudge.net/problem/UVA-11000) | The Four in One Stadium | 47.4 | 2022-05 P2 | ⬜ |
| 26 | [1594](https://vjudge.net/problem/UVA-1594) | Ducci Sequence | 47.3 | 2019-05 P1 | ⬜ |
| 27 | [12959](https://vjudge.net/problem/UVA-12959) | Strategy Game | 47.2 | 2021-10 P1 | ⬜ |
| 28 | [392](https://vjudge.net/problem/UVA-392) | Polynomial Showdown | 46.3 | 2023-12 P1 | ⬜ |
| 29 | [12015](https://vjudge.net/problem/UVA-12015) | Google is Feeling Lucky | 45.9 | 2024-05 P2 | ⬜ |
| 30 | [11824](https://vjudge.net/problem/UVA-11824) | A Minimum Land Price | 45.0 | 2023-03 P2 | ⬜ |
| 31 | [458](https://vjudge.net/problem/UVA-458) | The Decoder | 45.0 | 2020-10 P2 | ⬜ |
| 32 | [1583](https://vjudge.net/problem/UVA-1583) | Digit Generator | 44.3 | 2019-03 P2 | ⬜ |
| 33 | [913](https://vjudge.net/problem/UVA-913) | Joana and the Odd Numbers | 43.7 | 2018-05 P2 | ⬜ |
| 34 | [12650](https://vjudge.net/problem/UVA-12650) | Dangerous Dive | 43.5 | 2018-10 P1 | ⬜ |
| 35 | [10107](https://vjudge.net/problem/UVA-10107) | What is the Median? | 41.8 | 2024-10 P2 | ⬜ |
| 36 | [12195](https://vjudge.net/problem/UVA-12195) | Jingle Composing | 41.0 | 2017-05 P2 | ⬜ |
| 37 | [483](https://vjudge.net/problem/UVA-483) | Word Scramble | 39.8 | 2025-09 P2 | ⬜ |
| 38 | [13171](https://vjudge.net/problem/UVA-13171) | Pixel Art | 39.4 | 2022-03 P3 | ⬜ |
| 39 | [11219](https://vjudge.net/problem/UVA-11219) | Basic wall maze | 39.3 | 2022-10 P2 | ⬜ |
| 40 | [264](https://vjudge.net/problem/UVA-264) | Count on Cantor | 39.0 | 2013-10 P2 | ⬜ |
| 41 | [11728](https://vjudge.net/problem/UVA-11728) | Alternate Task | 38.3 | 2021-12 P2 | ⬜ |
| 42 | [10789](https://vjudge.net/problem/UVA-10789) | Prime Frequency | 38.1 | 2022-12 P2 | ⬜ |
| 43 | [11192](https://vjudge.net/problem/UVA-11192) | Group Reverse | 37.9 | 2016-10 P1 | ⬜ |
| 44 | [10474](https://vjudge.net/problem/UVA-10474) | Where is the marble | 34.8 | 2015-05 P2 | ⬜ |
| 45 | [541](https://vjudge.net/problem/UVA-541) | Error Correction | 33.7 | 2025-05 P2 | ⬜ |
| 46 | [10591](https://vjudge.net/problem/UVA-10591) | Happy Number | 32.8 | 2026-03 P1, 2017-12 P1 | ⬜ |
| 47 | [834](https://vjudge.net/problem/UVA-834) | Continued Fractions | 32.5 | 2023-05 P3 | ⬜ |
| 48 | [10018](https://vjudge.net/problem/UVA-10018) | Reverse and Add | 32.3 | 2013-10 P3 | ⬜ |
| 49 | [11541](https://vjudge.net/problem/UVA-11541) | Decoding | 32.2 | 2019-09 P2 | ⬜ |
| 50 | [10082](https://vjudge.net/problem/UVA-10082) | WERTYU | 31.5 | 2016-03 P2 | ⬜ |
| 51 | [13055](https://vjudge.net/problem/UVA-13055) | Inception | 31.2 | 2023-03 P3 | ⬜ |
| 52 | [573](https://vjudge.net/problem/UVA-573) | The Snail | 31.1 | 2024-04 P2 | ⬜ |
| 53 | [11634](https://vjudge.net/problem/UVA-11634) | Generate random numbers | 30.2 | 2024-05 P1 | ⬜ |

## Mức 2 — Vừa (F 10–30%) · 51 bài

| # | UVa | Tên bài | F% | Đã ra thi | Trạng thái |
|---|---|---|---|---|---|
| 1 | [11639](https://vjudge.net/problem/UVA-11639) | Guard the Land | 29.7 | 2026-05 P1 | ⬜ |
| 2 | [494](https://vjudge.net/problem/UVA-494) | Kindergarten Counting Game | 29.3 | 2014-12 P1 | ⬜ |
| 3 | [11678](https://vjudge.net/problem/UVA-11678) | Cards' Exchange | 29.1 | 2019-03 P1 | ⬜ |
| 4 | [10935](https://vjudge.net/problem/UVA-10935) | Even Parity | 28.5 | 2026-10 P3 | ⬜ |
| 5 | [13185](https://vjudge.net/problem/UVA-13185) | DPA Numbers I | 27.0 | 2018-10 P5 | ⬜ |
| 6 | [12592](https://vjudge.net/problem/UVA-12592) | Slogan Learning of Princess | 26.4 | 2022-05 P3 | ⬜ |
| 7 | [12820](https://vjudge.net/problem/UVA-12820) | Cool Word | 25.9 | 2019-12 P3 | ⬜ |
| 8 | [12918](https://vjudge.net/problem/UVA-12918) | Lucky Thief | 25.8 | 2020-05 P4 | ⬜ |
| 9 | [11233](https://vjudge.net/problem/UVA-11233) | Deli Deli | 25.8 | 2024-04 P3, 2017-12 P3 | ⬜ |
| 10 | [1587](https://vjudge.net/problem/UVA-1587) | Box | 24.9 | 2016-10 P2 | ⬜ |
| 11 | [499](https://vjudge.net/problem/UVA-499) | What's The Frequency, Kenneth? | 24.3 | 2016-05 P2 | ⬜ |
| 12 | [10487](https://vjudge.net/problem/UVA-10487) | Closest Sums | 24.2 | 2015-12 P2 | ⬜ |
| 13 | [10161](https://vjudge.net/problem/UVA-10161) | Ant on a Chessboard | 23.6 | 2023-10 P3 | ⬜ |
| 14 | [1237](https://vjudge.net/problem/UVA-1237) | Expert Enough? | 23.2 | 2020-05 P3 | ⬜ |
| 15 | [105](https://vjudge.net/problem/UVA-105) | The Skyline Problem | 22.7 | 2014-05 P3 | ⬜ |
| 16 | [673](https://vjudge.net/problem/UVA-673) | Parentheses Balance | 22.4 | 2025-09 P3 | ⬜ |
| 17 | [406](https://vjudge.net/problem/UVA-406) | Prime Cuts | 21.6 | 2016-03 P4, 2014-03 P2 | ⬜ |
| 18 | [543](https://vjudge.net/problem/UVA-543) | Goldbach’s Conjecture | 20.9 | 2025-05 P4 | ⬜ |
| 19 | [10110](https://vjudge.net/problem/UVA-10110) | Light, more light | 20.6 | 2024-10 P3 | ⬜ |
| 20 | [10550](https://vjudge.net/problem/UVA-10550) | Combination Lock | 20.5 | 2018-12 P2 | ⬜ |
| 21 | [10903](https://vjudge.net/problem/UVA-10903) | Playing War | 20.4 | 2022-12 P3 | ⬜ |
| 22 | [455](https://vjudge.net/problem/UVA-455) | Periodic Strings | 20.2 | 2015-10 P1 | ⬜ |
| 23 | [11917](https://vjudge.net/problem/UVA-11917) | Do Your Own Homework! | 19.8 | 2013-12 P3 | ⬜ |
| 24 | [13190](https://vjudge.net/problem/UVA-13190) | Rockabye Tobby | 19.6 | 2017-09 P3 | ⬜ |
| 25 | [10530](https://vjudge.net/problem/UVA-10530) | Guessing Game | 18.7 | 2019-03 P4 | ⬜ |
| 26 | [686](https://vjudge.net/problem/UVA-686) | Goldbach’s Conjecture (II) | 18.3 | 2018-05 P4 | ⬜ |
| 27 | [11360](https://vjudge.net/problem/UVA-11360) | Having Fun with Matrices | 18.3 | 2022-03 P4 | ⬜ |
| 28 | [389](https://vjudge.net/problem/UVA-389) | Basically Speaking | 17.9 | 2020-10 P3 | ⬜ |
| 29 | [11576](https://vjudge.net/problem/UVA-11576) | Scrolling Sign | 17.9 | 2023-10 P1 | ⬜ |
| 30 | [263](https://vjudge.net/problem/UVA-263) | Number Chains | 17.6 | 2020-05 P2 | ⬜ |
| 31 | [10633](https://vjudge.net/problem/UVA-10633) | Rare Easy Problem | 16.6 | 2018-03 P2 | ⬜ |
| 32 | [1368](https://vjudge.net/problem/UVA-1368) | DNA Consensus String | 16.4 | 2020-06 P3 | ⬜ |
| 33 | [10815](https://vjudge.net/problem/UVA-10815) | Andy’s First Dictionary | 16.2 | 2025-03 P3 | ⬜ |
| 34 | [11054](https://vjudge.net/problem/UVA-11054) | Wine trading in Gergovig | 15.8 | 2014-12 P2 | ⬜ |
| 35 | [10443](https://vjudge.net/problem/UVA-10443) | Rock, Scissors, Paper | 15.6 | 2023-12 P2 | ⬜ |
| 36 | [1339](https://vjudge.net/problem/UVA-1339) | Ancient Cipher | 15.0 | 2022-10 P3 | ⬜ |
| 37 | [401](https://vjudge.net/problem/UVA-401) | Palindromes | 14.4 | 2014-03 P3 | ⬜ |
| 38 | [482](https://vjudge.net/problem/UVA-482) | Permutation Arrays | 14.3 | 2017-03 P1 | ⬜ |
| 39 | [706](https://vjudge.net/problem/UVA-706) | LC-Display | 13.8 | 2025-12 P3, 2015-12 P3 | ⬜ |
| 40 | [441](https://vjudge.net/problem/UVA-441) | Lotto | 13.6 | 2025-05 P3 | ⬜ |
| 41 | [11220](https://vjudge.net/problem/UVA-11220) | Decoding the message. | 12.9 | 2019-05 P2 | ⬜ |
| 42 | [11078](https://vjudge.net/problem/UVA-11078) | Open Credit System | 12.8 | 2021-12 P4 | ⬜ |
| 43 | [11389](https://vjudge.net/problem/UVA-11389) | The Bus Driver Problem | 12.6 | 2015-10 P3 | ⬜ |
| 44 | [10813](https://vjudge.net/problem/UVA-10813) | Traditional BINGO | 12.4 | 2019-09 P3 | ⬜ |
| 45 | [725](https://vjudge.net/problem/UVA-725) | Division | 12.0 | 2021-03 P3 | ⬜ |
| 46 | [630](https://vjudge.net/problem/UVA-630) | Anagrams (II) | 11.9 | 2014-09 P3 | ⬜ |
| 47 | [865](https://vjudge.net/problem/UVA-865) | Substitution Cypher | 11.7 | 2016-12 P3 | ⬜ |
| 48 | [160](https://vjudge.net/problem/UVA-160) | Factors and Factorials | 11.0 | 2023-03 P5 | ⬜ |
| 49 | [12970](https://vjudge.net/problem/UVA-12970) | Alcoholic Pilots | 10.8 | 2021-10 P3 | ⬜ |
| 50 | [12455](https://vjudge.net/problem/UVA-12455) | Bars | 10.3 | 2023-05 P4 | ⬜ |
| 51 | [11518](https://vjudge.net/problem/UVA-11518) | Dominos 2 | 10.1 | 2024-05 P5 | ⬜ |

## Mức 3 — Khó (F 3–10%) · 53 bài

| # | UVa | Tên bài | F% | Đã ra thi | Trạng thái |
|---|---|---|---|---|---|
| 1 | [1644](https://vjudge.net/problem/UVA-1644) | Prime Gap | 9.9 | 2016-12 P4 | ⬜ |
| 2 | [993](https://vjudge.net/problem/UVA-993) | Product of Digits | 8.9 | 2017-03 P4 | ⬜ |
| 3 | [10188](https://vjudge.net/problem/UVA-10188) | Automated Judge Script | 8.8 | 2020-12 P2 | ⬜ |
| 4 | [11489](https://vjudge.net/problem/UVA-11489) | Integer Game | 8.8 | 2021-03 P4 | ⬜ |
| 5 | [11956](https://vjudge.net/problem/UVA-11956) | Brainfuck | 8.8 | 2026-05 P3 | ⬜ |
| 6 | [1118](https://vjudge.net/problem/UVA-1118) | Binary Stirling Numbers | 8.5 | 2024-04 P4 | ⬜ |
| 7 | [496](https://vjudge.net/problem/UVA-496) | Simply Subsets | 8.4 | 2017-03 P3 | ⬜ |
| 8 | [10010](https://vjudge.net/problem/UVA-10010) | Where's Waldorf? | 8.1 | 2026-03 P2, 2019-12 P4 | ⬜ |
| 9 | [10336](https://vjudge.net/problem/UVA-10336) | Rank the Languages | 8.1 | 2022-12 P4 | ⬜ |
| 10 | [846](https://vjudge.net/problem/UVA-846) | Steps | 8.1 | 2019-05 P4 | ⬜ |
| 11 | [10200](https://vjudge.net/problem/UVA-10200) | Prime Time | 8.1 | 2016-05 P4 | ⬜ |
| 12 | [11240](https://vjudge.net/problem/UVA-11240) | Antimonotonicity | 7.9 | 2023-03 P4 | ⬜ |
| 13 | [12869](https://vjudge.net/problem/UVA-12869) | Zeroes | 7.8 | 2021-10 P4 | ⬜ |
| 14 | [11040](https://vjudge.net/problem/UVA-11040) | Add bricks in the wall | 7.6 | 2014-03 P4 | ⬜ |
| 15 | [10106](https://vjudge.net/problem/UVA-10106) | Product | 7.6 | 2016-03 P5 | ⬜ |
| 16 | [1200](https://vjudge.net/problem/UVA-1200) | A DP Problem | 7.2 | 2017-05 P4 | ⬜ |
| 17 | [855](https://vjudge.net/problem/UVA-855) | Lunch in Grid City | 7.1 | 2020-06 P4 | ⬜ |
| 18 | [10763](https://vjudge.net/problem/UVA-10763) | Foreign Exchange | 7.0 | 2014-09 P4 | ⬜ |
| 19 | [612](https://vjudge.net/problem/UVA-612) | DNA Sorting | 6.8 | 2013-10 P4 | ⬜ |
| 20 | [1203](https://vjudge.net/problem/UVA-1203) | Argus | 6.6 | 2025-12 P4 | ⬜ |
| 21 | [340](https://vjudge.net/problem/UVA-340) | Master-Mind Hints | 6.6 | 2024-04 P5 | ⬜ |
| 22 | [10191](https://vjudge.net/problem/UVA-10191) | Longest Nap | 6.2 | 2020-06 P5 | ⬜ |
| 23 | [417](https://vjudge.net/problem/UVA-417) | Word Index | 6.2 | 2025-09 P4 | ⬜ |
| 24 | [145](https://vjudge.net/problem/UVA-145) | Gondwanaland Telecom | 5.9 | 2018-10 P3 | ⬜ |
| 25 | [300](https://vjudge.net/problem/UVA-300) | Maya Calendar | 5.7 | 2022-12 P5 | ⬜ |
| 26 | [409](https://vjudge.net/problem/UVA-409) | Exeuses, Excuses! | 5.7 | 2015-03 P3 | ⬜ |
| 27 | [151](https://vjudge.net/problem/UVA-151) | Power Crisis | 5.5 | 2013-10 P5 | ⬜ |
| 28 | [514](https://vjudge.net/problem/UVA-514) | Rails | 5.1 | 2018-05 P5 | ⬜ |
| 29 | [10810](https://vjudge.net/problem/UVA-10810) | Ultra-QuickSort | 4.8 | 2019-05 P6 | ⬜ |
| 30 | [10539](https://vjudge.net/problem/UVA-10539) | Almost Prime Numbers | 4.8 | 2024-10 P4 | ⬜ |
| 31 | [294](https://vjudge.net/problem/UVA-294) | Divisors | 4.7 | 2018-12 P4 | ⬜ |
| 32 | [696](https://vjudge.net/problem/UVA-696) | How Many Knights | 4.6 | 2017-09 P4 | ⬜ |
| 33 | [10405](https://vjudge.net/problem/UVA-10405) | Jolly Jumpers | 4.6 | 2025-12 P5 | ⬜ |
| 34 | [12442](https://vjudge.net/problem/UVA-12442) | Forwarding Emails | 4.5 | 2025-03 P5 | ⬜ |
| 35 | [11995](https://vjudge.net/problem/UVA-11995) | I Can Guess the Data Structure! | 4.5 | 2016-05 P5 | ⬜ |
| 36 | [357](https://vjudge.net/problem/UVA-357) | Let Me Count The Ways | 4.4 | 2025-05 P5 | ⬜ |
| 37 | [10365](https://vjudge.net/problem/UVA-10365) | Blocks | 4.3 | 2026-03 P4 | ⬜ |
| 38 | [442](https://vjudge.net/problem/UVA-442) | Matrix Chain Multiplication | 4.2 | 2023-10 P4 | ⬜ |
| 39 | [10273](https://vjudge.net/problem/UVA-10273) | Eat or Not to Eat? | 4.2 | 2024-12 P4 | ⬜ |
| 40 | [10326](https://vjudge.net/problem/UVA-10326) | The Polynomial Equation | 4.0 | 2022-03 P5 | ⬜ |
| 41 | [11957](https://vjudge.net/problem/UVA-11957) | Checkers | 4.0 | 2022-10 P4 | ⬜ |
| 42 | [941](https://vjudge.net/problem/UVA-941) | Permutations | 3.8 | 2024-05 P6 | ⬜ |
| 43 | [255](https://vjudge.net/problem/UVA-255) | Correct Move | 3.7 | 2019-09 P4 | ⬜ |
| 44 | [10533](https://vjudge.net/problem/UVA-10533) | Digit Primes | 3.7 | 2015-12 P6 | ⬜ |
| 45 | [10267](https://vjudge.net/problem/UVA-10267) | Graphical Editor | 3.6 | 2020-10 P4 | ⬜ |
| 46 | [12532](https://vjudge.net/problem/UVA-12532) | Interval Product | 3.6 | 2018-05 P7 | ⬜ |
| 47 | [580](https://vjudge.net/problem/UVA-580) | Critical Mass | 3.5 | 2024-04 P6 | ⬜ |
| 48 | [11039](https://vjudge.net/problem/UVA-11039) | Building designing | 3.3 | 2026-03 P5, 2014-05 P5 | ⬜ |
| 49 | [674](https://vjudge.net/problem/UVA-674) | Coin Change | 3.3 | 2022-05 P6 | ⬜ |
| 50 | [615](https://vjudge.net/problem/UVA-615) | Is It A Tree? | 3.2 | 2020-10 P5 | ⬜ |
| 51 | [13242](https://vjudge.net/problem/UVA-13242) | Pool Filling | 3.1 | 2025-03 P4 | ⬜ |
| 52 | [141](https://vjudge.net/problem/UVA-141) | The Spot Game | 3.1 | 2014-05 P2 | ⬜ |
| 53 | [10800](https://vjudge.net/problem/UVA-10800) | Not That Kind of Graph | 3.0 | 2021-12 P5 | ⬜ |

## Mức 4 — Rất khó (F < 3%) · 144 bài

Danh sách đầy đủ trong [`tier4.txt`](tier4.txt). Dưới 3% thí sinh làm được — thường cần thuật toán của năm 2–3 (đồ thị, quy hoạch động nâng cao, hình học). Chưa cần quan tâm ở năm 1.

## Thi thử: 12 đề gần nhất

Tạo contest trên vjudge (menu **Kỳ thi → Thêm**), thêm đủ 7 bài của một kỳ, đặt **3 giờ**. Làm như thi thật: tắt cph, chỉ dùng `run.sh`. Bài có ★ thuộc 一顆星選集.

| Kỳ thi | TB làm đúng | P1 | P2 | P3 | P4 | P5 | P6 | P7 |
|---|---|---|---|---|---|---|---|---|
| 2026-10-06 | 1.44 | 10696 | 10252 ★ | 10935 | 10665 | 10125 | 10436 | 10154 |
| 2026-05-26 | 0.75 | 11639 | 10189 ★ | 11956 | 665 | 1062 | 297 | 11481 |
| 2026-03-24 | 0.65 | 10591 | 10010 | 10226 ★ | 10365 | 11039 | 11526 | 12063 |
| 2025-12-09 | 1.08 | 10079 | 11321 ★ | 706 | 1203 | 10405 | 11806 | 1660 |
| 2025-09-30 | 1.31 | 100 ★ | 483 | 673 | 417 | 907 | 111 | 13211 |
| 2025-05-20 | 1.2 | 11063 ★ | 541 | 441 | 543 | 357 | 10740 | 1234 |
| 2025-03-25 | 1.5 | 11461 ★ | 10327 | 10815 | 13242 | 12442 | 10690 | 13204 |
| 2024-12-10 | 1.55 | 12250 | 382 | 10268 ★ | 10273 | 10150 | 10626 | 1657 |
| 2024-10-15 | 1.11 | 10008 ★ | 10107 | 10110 | 10539 | 10355 | 12882 | 1371 |
| 2024-05-21 | 1.16 | 11634 | 12015 | 10908 ★ | 10858 | 11518 | 941 | 1292 |
| 2024-04-23 | 1.26 | 10041 ★ | 573 | 11233 | 1118 | 340 | 580 | 10229 |
| 2023-12-12 | 0.87 | 392 | 10443 | 10242 ★ | 12546 | 11121 | 12428 | 10721 |
