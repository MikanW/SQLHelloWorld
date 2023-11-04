SELECT w1.id
FROM Weather AS w1, Weather AS w2
WHERE w1.Temperature > w2.Temperature AND DATEDIFF(w1.recordDate , w2.recordDate ) = 1

-- 在 MySQL 中，DATEDIFF 函数用于计算两个日期之间的差值，以天数为单位。其语法为：

-- sql
-- Copy code
-- DATEDIFF(date1, date2)
-- 其中：

-- date1 和 date2 是两个日期或日期时间值，可以是数据库中的日期字段，也可以是日期常量或表达式。
-- 这个函数返回 date1 减去 date2 的天数差。如果 date1 在 date2 之后，返回的值将是正数；如果 date1 在 date2 之前，则返回负数；如果两个日期相同，则返回值为 0。

-- 示例：

-- 假设有一个表 my_table，其中包含名为 start_date 和 end_date 的日期字段。我们想要找出这两个日期之间的天数差，可以使用 DATEDIFF 函数：

-- sql
-- Copy code
-- SELECT DATEDIFF(end_date, start_date) AS day_difference
-- FROM my_table;
-- 这将返回 end_date 减去 start_date 的天数差，并在查询结果中显示为 day_difference。

-- 请注意，DATEDIFF 仅计算日期之间的天数差，不考虑时间部分。