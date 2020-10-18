#### 1.函数

##### 1.1 单行函数

* 数学函数

  ```sql
  # 绝对值
  abs()
  # 向上取整,最接近并且大于等于该值的整数值
  ceiling()/ceil()
  # 向下取整,最接近并且小于等于该值的整数值
  floor()
  # 取模运算
  mode(m,n)
  # 求PI值
  PI()
  # 求幂运算
  pow(m,n)
  # 随机数
  rand()  
  # 四舍五入
  round(m,n)
  # 截取m小数点后n位
  truncate(m,n)
  ```

* 字符函数

  ```sql
  # 获取str的ascii码值
  ascii(str)
  # 将字符串转换为小写
  lower(字段|表达式)
  # 将字符串转换为大写
  upper(字段|表达式)
  # 拼接字符串
  concat(str1,str2…)
  # 获取字符串长度
  length(字段|表达式)
  # 截取字符串,pos开始位置，从1开始；len表示长度
  substr(str,pos,len)
  # 在str中搜索old，使用new代替
  replace(str,old,new)
  # str长度不够len，使用s左侧填充
  lpad(str,len,s)
  # str长度不够len,使用s右侧填充
  rpad(str,len,s)
  # 去重左右两侧的空格
  trim()
  ```

* 日期函数

  ```sql
  # 获取当前日期时间
  NOW()/SYSDATE()/CURRENT_TIMESTAMP()
  # 获取当前系统日期
  CURRENT_DATE()/CURDATE()
  # 获取当前系统时间
  CURRENT_TIME()/CURTIME()
  # 获取天数
  DAY(date)
  # 获取月份
  MONTH(date)
  # 获取年份
  YEAR(date)
  # 返回一年中的周数
  week(date)
  # 返回一周中的第几天(0-6)
  weekday(date)
  # 日期计算
  DATE_ADD(date,INTERVAL expr unit)
  ```
  

##### 1.2 聚合函数

```sql
# 平均值
avg()
# 获取总数
sum()
# 获取最大值
max()
# 获取最小值
min()
# 统计数目
count()
统计记录数或者统计某个非空字段的个数
```

##### 1.3 分组函数

```sql
GROUP BY
 	用于将信息划分为更小的组
 	每一组行返回针对该组的单个结果
HAVING子句
 	用于指定 GROUP BY 子句检索行的条件
#查询平均工资大于2000的部门编号
select deptno,avg(sal) avg from emp group by deptno having avg>=2000
```

##### 1.4 加密函数

```sql
select md5('root');
select sha('root');
select password('root');
```

##### 1.5 流程函数

```sql
如果expr1是真, 返回expr2, 否则返回expr3
IF(expr1,expr2,expr3)	

如果expr1不是NULL,返回expr1,否则返回expr2
IFNULL(expr1,expr2)	

如果value是真, 返回result1,否则返回default
CASE WHEN [value1] THEN[result1]… ELSE[default] END	

如果expr等于value1, 返回result1,否则返回default
CASE [expr] WHEN [value1] THEN[result1]… ELSE[default] END	
```



#### 2.高级查询

##### 2.1 连接查询

* 笛卡尔积

  > 多张表中记录组合所有可能有序对集合

* 内连接

  > 多张表均匹配的记录连接并展示在结果集
  >
  > 无主从表之分,与连接顺序无关

  ```sql
  # 查询所有雇员及其部门信息
  select * from emp,dept where emp.deptno = dept.deptno;
  select * from emp inner join dept on emp.deptno = dept.deptno;
  select * from emp inner join dept using(deptno); #字段名称必须一致,会自动去除重复列
  ```

* 自然连接

  > 自然连接都是等值连接
  >
  > 表中字段名称相等的字段进行连接，会自动去重重复列

  ```sql
  select * from emp natural join dept;
  ```

* 外连接

  > 以驱动表为依据,依次在匹配表中进行记录匹配,如果匹配则连接并展示在结果集中,否则以null填充
  >
  > 有主从表之分，与连接顺序有关。
  >
  > left/right [outer] join ... on...

  ```sql
  select * from emp 
  LEFT JOIN dept
  on emp.deptno = dept.deptno
  ```

* 自连接

  > 以本身为镜像进行连接(自身连接自身)

  ```sql
  # 查询员工及其领导的名称
  select e1.ename 名称,e2.ename 领导
  from emp e1,emp e2
  where e1.mgr = e2.empno
  ```

##### 2.2 子查询

> 嵌套查询，将一个查询结果作为另一个查询条件或组成部分的查询

```sql
# 单行子查询
  #查询工资大于7788号员工的所有员工信息
  select * from emp where sal >(select sal from emp where empno =7788);
# 多行子查询
  返回多值可以使用any或all来修饰。
  =any相当于in,<any小于最大值，>any大于最小值；
  <>all相当于not in,>all大于最大值，<all小于最小值。
  
# 查询超过所在部门平均工资的员工信息
select * from emp e1 where sal > 
(select avg(sal) from emp e2 where e1.deptno = e2.deptno);

#查询薪水大于2000的部门名称
select dname from dept d where deptno in
(select deptno from emp e where sal > 2000);
    或
select dname from dept d where EXISTS 
(select * from emp e where sal > 2000 and d.deptno=e.deptno);
# in和exists的区别
in先执行子查询，在执行主查询;exists先执行主查询;
exists子查询不返回具体结果，返回true值出现在结果集，否则不出现。
```

##### 2.3 联合查询

> union: 并集，所有的内容都查询，重复的显示一次
> union all: 并集，所有的内容都显示，包括重复的

```sql
select * from emp where deptno = 20
UNION ALL
select * from emp where sal <=2000
```

