---
title: 'Đọc dữ liệu '
description: 'Đọc dữ liệu và tìm hiểu cấu trúc file'
---

## Đọc dữ liệu

```yaml
type: NormalExercise 
lang: python
xp: 100 
skills: 2
key: 67f01da0d3   
```


Dữ liệu thông tin thành viên được lưu dưới dạng file `members.csv` tại đường dẫn `'datasets/members.csv'`.

Trong python ta sử dụng thư viện `pandas` để load file `csv` dưới dạng DataFrame.

Để xem kích thước của tập dữ liệu ta gọi thuộc tính `shape`. Kết quả của hàm này trả  về một tuple có dạng `(số dòng, số cột)`.

Để xem các  dòng đầu của dữ liệu ta dùng hàm `head()`, và các dòng cuối của dữ liệu ta sử dụng `tail()`


`@instructions`
- Import thư viện `pandas` vào python và đặt tên là `pd`
- Sử dụng `pd.read()` để load file `members.csv`
- Gọi thuộc tính `shape`
- Xuất ra các dòng đầu của dữ liệu, sử dụng `head()`
- Xuất ra 3 dòng cuối của dữ liệu, sử dụng `tail()`

`@hint`
- Here is the hint for this setup problem. 
- It should get students 50% of the way to the correct answer.
- So don't provide the answer, but don't just reiterate the instructions.
- Typically one hint per instruction is a sensible amount.

`@pre_exercise_code`
```{python}
# Load datasets and packages here.
```
`@sample_code`
```{python}
# Import thư viện pandas
import pandas as pd
# Đọc file dữ liệu
members = pd.read_csv(__)
# Kích thước dữ liệu
print(members.__)
# Xuất các dòng đầu của dữ liệu
print(member.__)
# Xuất 3 dòng cuối của dữ liệu
print(member.__(3))
```
`@solution`
```{python}
# Import thư viện pandas
import pandas as pd
# Đọc file dữ liệu
members = pd.read_csv('datasets/members.csv')
# Kích thước dữ liệu
print(members.shape)
# Xuất các dòng đầu của dữ liệu
print(member.head())
# Xuất 3 dòng cuối của dữ liệu
print(member.tail(3))
```
`@sct`
```{python}
# Update this to something more informative.
success_msg("Bạn có chắc nhập đúng đường dẫn. Thuộc tính thì không có () và hàm thì có ()")
```