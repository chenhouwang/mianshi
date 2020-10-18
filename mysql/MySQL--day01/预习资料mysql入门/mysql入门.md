### 1. 数据库和数据库管理系统

#### 1.1 数据库(DataBase)

> 按照数据结构存储数据的仓库

#### 1.2 数据库管理系统(DBMS)

> (Database Management System)是操纵和管理数据库的软件系统

1. RDBMS

   > 建立在关系模型之上的数据库管理系统,主要实现对结构化数据的管理。

   1. 1979 年，Oracle 2 诞生，它是第一个商用的 RDBMS（关系型数据库管理系统），随后被
      卖给了军方客户。随着 Oracle 软件的名气越来越大，公司也改叫 Oracle 公司。20 世纪
      90 年代，Oracle 的创始人埃里森成为继比尔·盖茨之后第二富有的人，可以说 IBM 缔造了
      两个帝国，一个是软件业的霸主微软，另一个是企业软件市场的霸主 Oracle。如今 Oracle
      的年收入达到了 400 亿美金，足以证明商用数据库软件的价值。从这点我们也能看出，如
      果选择了一个大的赛道，就要尽早商业化，占据大型企业客户完全可以创建巨大的商业价
      值，也足以证明一个软件企业不需要靠卖硬件也可以挣到很多钱。
   2. MySQL 是 1995 年诞生的开源数据库管理系统，因为免费开源的特性，得到了开发者的喜
      爱，用户量迅速增长，成为开源数据库的 No.1。但在发展过程中，MySQL 先后两次被易
      手，先是在 2008 年被 SUN 收购，然后在 2010 年 SUN 被 Oracle 收购，于是 Oracle 同
      时拥有了 MySQL 的管理权，至此 Oracle 在数据库领域中成为绝对的领导者。从这里我们
      也能看到，虽然 MySQL 是免费的产品，但是使用人数多，就足以证明巨大的用户价值。
      一个有巨大用户价值的产品，即使没有直接的商业价值，但作为基础设施也会被商业巨头看
      上。不过在 Oracle 收购 MySQL 的同时，MySQL 的创造者担心 MySQL 有闭源的风险，因此
      创建了 MySQL 的分支项目 MariaDB，MariaDB 在绝大部分情况下都是与 MySQL 兼容
      的，并且增加了许多新的特性，比如支持更多的存储引擎类型。许多企业也由原来的
      MySQL 纷纷转向了 MariaDB。
   3. SQL Server 是微软开发的商业数据库，诞生于 1989 年。实际上微软还推出了 Access 数
      据库，它是一种桌面数据库，同时具备后台存储和前台界面开发的功能，更加轻量级，适合
      小型的应用场景。因为后台的存储空间有限，一般只有 2G，Access 的优势在于可以在前
      台便捷地进行界面开发。而 SQL Server 是大型数据库，用于后台的存储和查询，不具备界
      面开发的功能。从这里我们也能看出，即使 SQL 语言是通用的，但是为了满足不同用户的
      使用场景，会存在多个 DBMS。比如 Oracle 更适合大型跨国企业的使用，因为他们对费用
      不敏感，但是对性能要求以及安全性有更高的要求，而 MySQL 更受到许多互联网公司，
      尤其是早期创业公司的青睐。 

2. Nosql

   > NoSQL 泛指非关系型数据库，主要包含键值型数据库、文档型数据
   > 库、搜索引擎和列存储,图形数据库等 

   1. 键值型数据库通过 Key-Value 键值的方式来存储数据，其中 Key 和 Value 可以是简单的
      对象，也可以是复杂的对象。Key 作为唯一的标识符，优点是查找速度快，在这方面明显
      优于关系型数据库，同时缺点也很明显，它无法像关系型数据库一样自由使用条件过滤（比
      如 WHERE），如果你不知道去哪里找数据，就要遍历所有的键，这就会消耗大量的计算。
      键值型数据库典型的使用场景是作为内容缓存。Redis 是最流行的键值型数据库 。
   2. 文档型数据库用来管理文档，在数据库中文档作为处理信息的基本单位，一个文档就相当于
      一条记录，MongoDB 是最流行的文档型数据库。 
   3. 搜索引擎也是数据库检索中的重要应用，常见的全文搜索引擎有 Elasticsearch、Splunk 和
      Solr。虽然关系型数据库采用了索引提升检索效率，但是针对全文索引效率却较低。搜索引
      擎的优势在于采用了全文搜索的技术，核心原理是“倒排索引” 。
   4. 列式数据库是相对于行式存储的数据库，Oracle、MySQL、SQL Server 等数据库都是采用
      的行式存储（Row-based），而列式数据库是将数据按照列存储到数据库中，这样做的好
      处是可以大量降低系统的 I/O，适合于分布式文件系统，不足在于功能相对有限。 
   5. 图形数据库，利用了图这种数据结构存储了实体（对象）之间的关系。最典型的例子就是社
      交网络中人与人的关系，数据模型主要是以节点和边（关系）来实现，特点在于能高效地解
      决复杂的关系问题。 

3. rdbms与Nosql

   > NoSQL 对 rdbms 做出了很好的补充，它可以让我们在云计算时代，更好地使用数据库技
   > 术，比如快速读写，这样可以用低廉的成本，更方便进行扩展。这些 DBMS 除
   > 了支持 SQL 标准以外，还会有自己的“方言”，也就是自己独有的语法。
   >
   > Nosql是对RDBMS的补充,不是替代。

#### 1.3 数据库在数据分析中的作用和地位

> 数据分析围绕的核心内容就是数据,数据分析的工具有很多,想我们学习了excel，还有以后要学习的python等等。
>
> 但是excel一般用于处理中小型数据量的数据,如果数据量特别庞大,性能表现会较差。想当今互联网产业数据量爆炸式增长,那么如何实现海量数据的存储和查询就是一个非常重要的问题。因此数据库是一种非常常见的处理数据存储和查询的方式之一。
>
> 学好数据库就是学习数据分析最基本也是最核心的内容。mysql作为关系型数据库的通用标准，使用非常广泛,因此就以mysql为例。

#### 1.4 Mysql数据库管理系统

> 瑞典Mysql AB公司开发的关系型数据库管理系统。
>
> MySQL是一种关系数据库管理系统，关系数据库将数据保存在不同的表中，而不是将所有数据放在一个大仓库内，这样就增加了速度并提高了灵活性。
>
> MySQL所使用的 SQL 语言是用于访问数据库的最常用标准化语言。体积小，速度快，成本低，支持千万级数据，成为中小型网站开发的主流选择。
>
> 在GPL条款下发布,数据量支持千万级别。

* 连接mysql服务(登录)

  ```sql
  mysql –uroot –p密码
  ```

* 常见命令

  ```sql
  show databases;  显示所有数据库
  use dbname; 指定使用某个数据库
  show tables; 显示该数据库下所有的表
  ```

* 常用客户端工具

  > sqlyog，navicat  

### 2.sql初识

  #### 2.1 什么是sql

> 结构化查询语言(Structured Query Language),是关系型数据的一门通用语言,用于实现对数据库的查询，更新和管理。

#### 2.2 sql的分类

- DDL(Data Definition Language),数据定义语言，它用来定义我们的数据库对象，包括数据库、数据表和列。通过使用 DDL，我们可以创建，删除和修改数据库和表结构。
- DML(Data Manipulation Language),数据操作语言，我们用它操作和数据
  库相关的记录，比如增加、删除、修改数据表中的记录。
- DCL(Data Control Language),数据控制语言，我们用它来定义访问权限和
  安全级别。
- DQL(Data Query Language),数据查询语言，我们用它查询想要的记录，它
  是 SQL 语言的重中之重。在实际的业务中，我们绝大多数情况下都是在和查询打交道，
  因此学会编写正确且高效的查询语句。

#### 2.3 ddl操作

 ##### 2.3.1 数据库操作

* 创建数据库

  ```sql
  create database [if not exists] dbname
  ```

* 销毁数据库

  ```sql
  drop database [if exists] dbname
  ```

##### 2.3.2 数据类型和表操作

>数据库中的数据存放在数据库表中，以二维表格的形式存在。
>
>一行代表一条数据记录，称为记录。
>
>一列代表同一域的数据，表示同一属性,称为字段

* 数据类型

  ```sql
  1)	数值类型
  	TINYINT      1
  	SMALLINT    2
  	MEDIUMINT  3
  	INT         4
  	BIGINT      8
  	float(n,m)    n代表长度，m代表小数点后位数
  	double(n,m)
  	decimal(n,m)
  
  2)	日期类型
  	date:日期
  	time:时间
  	datetime:日期时间
  	timestamp:时间戳
  	year：年
  	
  3)	字符串类型
  	char:定长字符串
  	varchar:可变长字符串
  	
  4)  其他类型	
  	binary：定长二进制
  	varbinary：可变长二进制
  	blob:二进制
  	text:大对象，字符，文本
  	enum:枚举
  	set:集合
  ```

* 创建表

  ```sql
  create table `user`(
    userid int,
    username varchar(20),
    `password` varchar(20),
    birthday date
  )
  ```

* 修改表

  ```sql
  A.添加字段
  alter table tname add [column] col_name col_definition [after|first]
  
      添加列(默认最后一列)
      alter table tname add colname colType
  
      添加到指定列后
      alter table tname add colname2 colType after colname1
  
      添加到首列
      alter table tname add colname colType first;
  
  B.	修改字段
      alter table tname change/modify col_name new_col_name col_definition;
      修改字段名称
      alter table tname change colname1 colname2 colType
      修改数据类型
      alter table tname change colname colname colType
      alter table tname modify colname colType
      修改字段位置
      alter table tname modify colname colType after colname2;
  
  C.	删除字段
  alter table tname drop colname;
  
  D.	重命名
  rename table tname to newname;
  
  E.	清空表
  truncate table tname;
  
  F.重命名
  alter table tname rename to newName;
  ```

* 销毁表

  ```sql
  drop table tname
  ```

#### 2.4 数据完整性

> 数据完整性指代数据的准确性和可靠性

##### 2.4.1 实体完整性

> 保证记录是唯一的，不重复的

* 主键约束(primary key)

  > 主键字段唯一且不能为空

  ```sql
  创建表时声明主键
  create table user(
  userid int primary key,
  username varchar(20)
  );
  create table user(
   userid int,
   username varchar(20),
   primary key(userid)
  );
  
  修改表结构添加约束
  alter table user add CONSTRAINT PK_USERID primary key(userid);
  
  1.每张表必须有且只有一个主键
  2.允许有联合主键
  3.尽量选择非业务字段
  
  销毁:
  alter table user drop primary key;
  ```

* 唯一约束(unique)

  > 唯一约束字段值不能重复

  ```sql
  创建表时声明唯一约束
  create table user(
  userid int primary key,
  username varchar(20),
  card varchar(18) unique,
  );
  create table user(
  userid int primary key,
  username varchar(20),
  card varchar(18),
  unique(card) 
  );
  
  修改表结构添加唯一约束
  alter table user add CONSTRAINT UN_CAED unique(card);
  
  销毁:
  drop unique index UN_CARD on user;
  ```

* 主键自增(auto_increment)

  ```sql
  create table user(
  userid int primary key auto_increment,
  username varchar(20),
  card varchar(18)
  );
  ```

##### 2.4.2 域完整性

```sql
保证列的数据正确性
```

* 类型约束
* 非空约束(not null)
* 默认值(default)

##### 2.4.3 引用完整性

> 保证表中字段值的有效

* 外键约束(foreign key)

  > 表中外键字段的取值需要依赖于另张表的主键的取值

  ```sql
  alter table emp add CONSTRAINT PK_DEPTNO foreign key(deptno) REFERENCES dept(deptno);
  alter table emp drop foreign key;
  ```



 