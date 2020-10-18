#### 1.运算符

##### 1.1 算术运算符

```sql
select 1+2;
select 1-2;
select 3*4;
select 3/4;  #0.75
select 3/0;  #null
select 3 div 4; #整除
```

##### 1.2 比较运算符

> 表达式为真结果为1,否则为0

```sql
select 1>1;
select 1<1;
select 1<>1;
select 1!=1;
is true,is not true,
is null,is not null,
between and,not between and,
in, not in
```

##### 1.3 逻辑运算符

> 表达式为真结果为1,否则为0

```sql
select 1=1 and 1=2;
select 1=1 or 1=2;
select !(1<>1);
```

##### 1.4 位运算符

```sql
select 1&0; #按位与
select 1 | 1; #按位或 
select 1^2; #按位异或
```

 #### 2.DML操作

> 对表数据的操作,会更改数据，不改变结构

##### 2.1 插入

* 向表中所有字段添加数据

  ```sql
  insert into tname values(col1,col2...)
  value值的个数和顺序必须和表中字段的个数和顺序保持一致
  ```

* 向表中部分字段添加数据

  ```sql
  前提是不添加值得字段允许为空。
  insert into tname(col1,col2...) values(val1,val2...)
  value值得顺序必须和前面字段名称的顺序一致
  ```

* 批量数据插入

  ```sql
  insert into tname[(col1,col2...)] values(val1,val2...),(val1,val2...)... 
  ```

* 复制表数据

  ```sql
  insert into tname([col1,col2...]) select col1,col2...from tname2
  ```

##### 2.2 修改

```sql
update tname set col1=val1,col2=val2... [where...]
如果update没有使用where则代表对整张表所有记录修改
```

##### 2.3 删除

```sql
delete from tname [where...]
不使用where将删除整张表中所有的记录

delete,truncate和drop的区别?
 delete只删除数据,不修改表结构,不重置自增,逐行删除
 truncate清空表数据,不修改表结构,重置自增,删除速度比delete高
 drop清空表结构,表结构文件和数据文件全部删除
```

#### 3.DQL操作

##### 3.1 dql语法

```sql
select cols #查询并展示的数据(字段,表达式等)
from tables #查询的数据来源(表,结果集,视图等)
where condition #条件语句
group by  #分组
having    #分组之后的条件判断
order by  #排序(asc升序   desc降序)
limit     #限制结果查询
```

##### 3.2 基本查询语句(emp表为例)

* 查询所有字段的数据

  ```sql
  select * from emp
  ```

* 查询部分字段的数据

  ```sql
  # 查询emp表中empno和ename的值
  select empno,ename from emp
  ```

* 单一条件查询

  ```sql
  # 查询emp表中薪水>2000的员工信息
  select * from emp where sal > 2000
  ```

* 组合条件查询

  ```sql
  # 查询薪水>2000的20号部门的员工信息
  select * from emp where sal > 2000 and deptno = 20
  # 查询薪水>2000或者20号部门的员工信息
  select * from emp where sal > 2000 or deptno = 20
  ```

* 范围查询

  ```sql
  # 查询薪水在1000到2000之间的员工信息
  select * from emp where sal >= 1000 and sal <= 2000
  select * from emp where sal between 1000 and 2000
  ```

* 集合查询

  ```sql
  # 查询员工编号为7369,7521,7788的员工信息
  select * from emp where empno=7369 or empno=7521 or empno=7788
  select * from emp where empno in(7369,7521,7788)
  ```

* 别名

  ```sql
  select empno [as] 编号,ename [as] 名称 from emp
  select e.ename,e.deptno from emp e
  ```

* 去重

  ```sql
  # 在emp表中查询所有的职位信息
  select distinct job from emp
  ```

* 非空验证

  ```sql
  # 查询员工奖金为空的员工信息
  select * from emp where comm is [not] null
  ```

* 排序

  ```sql
  # 按照薪水升序排序
  select * from emp order by sal [asc]
  # 按照薪水升序排序,如果薪水一样则按照编号降序排序
  select * from emp order by sal [asc],empno desc 
  ```

* 模糊查询

  ```sql
  % 代表匹配0到多个字符
  _ 代表匹配1位字符
  
  #查询以a打头的员工信息
  select * from emp where ename like 'a%';
  #查询以n结尾的员工信息
  select * from user where ename like '%n';
  #查询包含l的员工信息
  select * from user where ename like '%l%';
  #查询第二个字为l的员工信息
  select * from user where ename like '_l%'
  ```

* 限制结果查询

  ```sql
  limit offset,length: 
     offset指代起始位置,从0开始
     length指代获取的长度
     
  # 查询前五条记录
  select * from emp limit 0,5;
  select * from emp limit 5;
  
  常用于分页查询
  
  ```

  

