---
  title: "Đọc dữ liệu "
  description: "Đọc dữ liệu và tìm hiểu cấu trúc file"
---

## Đọc dữ liệu

```yaml
type: NormalExercise 
lang: python
xp: 100 
skills: 2
key: 67f01da0d3   
```


Dữ liệu thông tin thành viên được lưu dưới dạng file `members.csv` tại đường dẫn `'/datasets/members.csv'`.

Trong python ta sử dụng thư viện `pandas` để load file `csv` dưới dạng DataFrame.

Để xem kích thước của tập dữ liệu ta gọi thuộc tính `shape`. Kết quả của hàm này trả  về một tuple có dạng `(số dòng, số cột)`.

Để xem các  dòng đầu của dữ liệu ta dùng hàm `head()`, và các dòng cuối của dữ liệu ta sử dụng `tail()`


`@instructions`
- Import thư viện `pandas` vào python và đặt tên là `pd`
- Sử dụng `pd.read()` để load file `members.csv`
- Gọi thuộc tính `shape`
- Xuất ra các dòng đầu của dữ liệu, sử dụng `head()`. Xuất ra 3 dòng cuối của dữ liệu, sử dụng `tail()`

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
print(members.__)
# Xuất 3 dòng cuối của dữ liệu
print(members.__(3))
```

`@solution`

```{python}
# Import thư viện pandas
import pandas as pd
# Đọc file dữ liệu
members = pd.read_csv('/datasets/members.csv')
# Kích thước dữ liệu
print(members.shape)
# Xuất các dòng đầu của dữ liệu
print(members.head())
# Xuất 3 dòng cuối của dữ liệu
print(members.tail(3))
```

`@sct`

```{python}
Ex().has_import("pandas", same_as = False)
Ex().check_correct(
    check_object('members').has_equal_value(),
    check_function('pandas.read_csv').check_args(0).has_equal_ast()
)
Ex().has_printout(0)
Ex().has_printout(1)
Ex().has_printout(2)
success_msg("Great job!")
```

---

## Xem tên cột dữ liệu

```yaml
type: NormalExercise 
xp: 100 
key: 03e7143a4a   
```


Để xem tên cột dữ liệu ta sử dụng thuộc tính `columns`.  Kết quả có dạng `Index(['Dấu thời gian', 'Giới tính', 'Tỉnh thành đang làm việc',
       'Số năm tại khu vực sinh sống', 'Độ tuổi'], dtype='object')`.
Để dễ dàng truy vấn, ta mã hóa tên cột với các tên mới ` ['col0','col1','col2','col3','col4']` và lưu dưới biến `new_names`.

Sử dụng `rename(columns={'tên cột cũ':'tên cột mới'})` để gán tên mới cho các cột.

Thư viện `pandas` đã được load sẵn với tên `pd`.  Dữ liệu mẫu đã được lưu với biến `members`


`@instructions`
-  Xuất tên các cột sử dụng `columns`
- `map_col` sẽ có dạng `{'Độ tuổi': 'col4', 'Giới tính': 'col1', 'Dấu thời gian': 'col0', 'Tỉnh thành đang làm việc': 'col2', 'Số năm tại khu vực sinh sống': 'col3'}` 
- Thay đổi tên các cột thành các tên mới sử dụng `rename(columns=__,inplace=True)` với `inplace` thể hiện việc bạn muốn lưu đè các thay đổi.

`@hint`
- Bạn đã gọi thuộc tính `columns` chưa?
- Bạn đã gán `columns = map_col` trong hàm `rename` chưa

`@pre_exercise_code`

```{python}
import pandas as pd
members = pd.read_csv('/datasets/members.csv').iloc[:5,:5]
new_names = ['col0','col1','col2','col3','col4']
```

`@sample_code`

```{python}
#Xuất danh sách tên cột
print(members.__)
#Map tên cột và tên mới
map_col = dict(zip(members.columns,new_names))
print(map_col)
#Đổi tên cột
members.rename(__,__)
#Xuất danh sách tên cột
print(members.__)
```

`@solution`

```{python}
#Xuất danh sách tên cột
print(members.columns)
#Map tên cột và tên mới
map_col = dict(zip(members.columns,new_names))
print(map_col)
#Đổi tên cột
members.rename(columns=map_col,inplace=True)
#Xuất danh sách tên cột
print(members.columns)
```

`@sct`

```{python}
Ex().has_printout(0)
Ex().has_printout(1)
Ex().has_printout(2)
success_msg("Great job!")
```

---

## Xem thông tin dữ liệu

```yaml
type: NormalExercise 
xp: 100 
key: 1607ca8a15   
```


Để xem thông tin về kiểu dữ liệu của các trường (cột) cũng như xem mỗi cột có bao nhiêu giá trị không missing, ta sử dụng lệnh `info()`
Kết quả thu được
`<class 'pandas.core.frame.DataFrame'>
RangeIndex: 21 entries, 0 to 20
Data columns (total 17 columns):

col0     21 non-null object

...

col7     19 non-null object

col8     19 non-null object`
Data đã được load sẵn trên biến `members` và `map_col`


`@instructions`
- Xem thông tin cột sử dụng `info()`

`@hint`
- Bạn đã gọi thuộc tính `columns` chưa?
- Bạn đã gán `columns = map_col` trong hàm `rename` chưa

`@pre_exercise_code`

```{python}
import pandas as pd
members = pd.read_csv('/datasets/members.csv')
new_names = ['col0', 'col1', 'col2', 'col3', 'col4', 'col5', 'col6', 'col7', 'col8',
       'col9', 'col10', 'col11', 'col12', 'col13', 'col14', 'col15', 'col16']
map_col = dict(zip(members.columns,new_names))
members.columns = new_names
```

`@sample_code`

```{python}
#Xem thông tin dữ liệu
print(members.__)
#print
```

`@solution`

```{python}
#Xem thông tin dữ liệu
print(members.info())
#print
```

`@sct`

```{python}
Ex().has_printout(0)
success_msg("Great job!")
```
