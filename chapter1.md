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

## Xem thông tin dữ liệu

```yaml
type: NormalExercise 
xp: 100 
key: 03e7143a4a   
```


DataFrame là dữ liệu dưới dạng bảng, bao gồm cột và dòng. Để xem tên các cột có thể gọi thuộc tính `columns`. Tên các cột được hiển thị dưới dạng
`Index(['Dấu thời gian', 'Giới tính', 'Tỉnh thành đang làm việc',
       'Số năm tại khu vực sinh sống', 'Độ tuổi',
        .....
       'Bạn biết Data Science ở mức độ nào?',
       'Bạn biết Marketing ở mức độ nào?'],
      dtype='object')`

Để thuận tiện cho việc truy vấn cũng như đảm bảo an toàn cho dữ liệu, chúng ta tiến hành mã hóa tên các cột. 
`new_names = ['col0', 'col1', 'col2', 'col3', 'col4', 'col5',
             'col6', 'col7', 'col8', 'col9','col10', 'col11', 
             'col12', 'col13', 'col14', 'col15', 'col16']`.  Biến `new_names` đã được tạo sẵn

Thư viện `pandas` đã được load sẵn với `pd`.  File csv đã được khai báo với biến `members`


`@instructions`
-  Xem tên các cột bằng cách gọi thuộc tính `columns`
- Lưu tên cột với biến `col_names`
- Gán tên mới cho cột

`@hint`
Bạn đã gọi `members.columns` chưa?

`@pre_exercise_code`

```{python}
import pandas as pd
members = pd.read_csv('/datasets/members.csv')
new_names = ['col0', 'col1', 'col2', 'col3', 'col4', 'col5',
             'col6', 'col7', 'col8', 'col9','col10', 'col11', 
             'col12', 'col13', 'col14', 'col15', 'col16']
```

`@sample_code`

```{python}
#Xem tên các cột
print(members.__)
#Lưu tên cột với biến : col_names
col_names = list(__.__)
#Map tên cột và tên đã mã hóa:
#map_col = dict(zip(new_names,col_names)
#Gán tên cột với 
#members.__ = new_names
```

`@solution`

```{python}
#Xem tên các cột
print(members.columns)
#Lưu tên cột với biến : col_names
col_names = list(members.columns)
#Map tên cột và tên đã mã hóa:
#map_col = dict(zip(new_names,col_names)
#Gán tên cột mới
#members.columns = new_names
```

`@sct`

```{python}
Ex().has_printout(0)
#Ex().check_correct(
#    check_object('col_names').has_equal_value(),
#    check_function('list').check_args(0).has_equal_ast('members.colums')
#)
#Ex().check_correct(
#    check_object('map_col').has_equal_value(),
#  	check_correct(
#    	check_function('dict').check_args(0).has_equal_ast()
#        check_function('zip').multi(
#        	check_args(0).has_equal_value(),
#            check_args(1).has_equal_value()
#        )
#    )
#)
success_msg("Great job!")
```
