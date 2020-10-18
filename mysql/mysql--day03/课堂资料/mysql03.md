#### 1.运算符

##### 1.1 算术运算符 + - * /

```sql
select 1+1;   #2
select 1-1;   #0
select 1*1;   #1
select 5/2;   #2.5 
select 3/0;   #null(空)
select 5 div 2; #取整
select 5%2;   #取模(余)运算
```

##### 1.2 比较运算符  = > < >= <= /  != <>

```sql
结果?  true--> 1    /    false ---> 0
select 1=1;   #1
select 1!=1;  #0
select 1<>1;  #0
```

##### 1.3 逻辑运算符  and or !

```sql
结果?  true--> 1    /    false ---> 0
select 1>2 and 1<2;   # 0
select 1>2 or 1<2;    # 1
select !(1>2);        # 1
```

##### 1.4 位运算符  &  |  ^

先将数据转换为二进制然后运算

```sql
&:按位与  有一侧为0结果为0
   select 3 & 2  # 2
|:按位或  有一侧为1结果为1
  select 3 | 2  # 3
^:按位异或  两侧数据一样取0,两侧数据不一样取1
  select 3 ^ 2  # 1
```

#### 2.DQL语言

```sql
select 子句   #表达式/字段,结果集中展示的内容
from 子句     #表/结果集/视图,数据的来源
where 子句    #条件(单个条件,组合条件)
order by 子句  #排序
group by 子句  #分组
having 子句    #分组之后条件
limit 子句     #限制结果查询(mysql方言，只在mysql中有)  分页
```

* 查询所有字段的内容

  ```sql
  select * from emp;
  ```

* 查询部分字段

  ```sql
  select empno,ename from emp;
  ```

* 单一条件查询    where

  ```sql
  # 查询20号部门的员工的所有的信息
  select * from emp where deptno = 20
  ```

* 组合条件

  ```sql
  # 查询20号部门工资>2000的员工信息
  select * from emp where sal > 2000 and deptno = 20;
  # 查询员工编号为7788，7521，7369的员工信息
  select * from emp where empno = 7788 or empno = 7521 or empno = 7369;
  ```

* 范围查询

  ```sql
  # 查询工资在1000到2000之间的员工信息
  select * from emp where sal >= 1000 and sal <= 2000;
  select * from emp where sal between 1000 and 2000;
  ```

* 集合查询

  ```sql
  # 查询员工编号为7788，7521，7369的员工信息
  select * from emp where empno in (7788,7521,7369);
  ```

* 别名(字段,表达式,结果集,表...)   [as] 别名

  ```sql
  select ename,sal*1.05 sal from emp;
  select e.ename from emp e;
  ```

* 去重

  ```sql
  select distinct job from emp;
  ```

* 空判断  is

  ```sql
  select * from emp where comm is [not] null;
  ```

* 排序  order by 字段 [asc|desc]

  ```sql
  select * from emp order by sal asc;
  select * from emp order by sal desc;
  select * from emp order by sal desc,empno desc; #并列时第二排序
  ```

* 模糊查询  like    %:0-多位  _:代表一位字符

  ```sql
  # s开头
   select * from emp where ename like 's%';
  # n结尾
    select * from emp where ename like '%n';
  # 包含s
    select * from emp where ename like '%s%';
    
    select * from emp where ename like '_l%';
  ```

* 限制结果查询   limit index,length

  ```sql
  select * from emp limit 5;
  select * from emp limit 1,5;
  ```

  





















