###Arel
Arel stands for  A Relational Algebra.
Arel can solve the problem when using Sql which **ActiveRecord** cannot solve such as `OR`, `UNION`, and `LEFT OUTER JOIN`. Solving here means chainable methods.

By using Arel, we don't need to write string Sql

###Context of this example:
A `user` can write a `Post` on `ChatRoom`, and give `Comment` on `Post`
All the class `Post`, `ChatRoom` and `Comment` are inheritted from `Text`

###Requirement:
Find all the `ChatRoom` that have a specific user's comments and posts.

###Notes when using Arel:
  - Must set table alias for descendant class, i.e. Post is descendant of Text
  - Reset the table alias after use because table alias is cached and will causes error for another SQL.
  - Arel methods are chainable, i.e. where(...).or(...) is very convenient, right?

Arel có thể giải quyết được vấn đề về viết câu lệnh SQL mà AR thông thường không giải quyết được.
Các câu như OR, UNION, LEFT OUTER JOIN

Bằng cách sử dụng Arel ta có thể viết được những câu SQL mà không phải đưa về thuần SQL.

Bài toán trong application này:
1 User có thể đăng Post vào ChatRoom, có thể Comment vào Post.
Post, ChatRoom, Comment đều được inherit từ Text

Yêu cầu: Tìm kiếm ChatRoom mà có cả Post lẫn Comment của User đó.

Một số lưu ý khi sử dụng Arel: 
* Khi sử dụng các model là descendant của một model chính thì phải set table_alias
* Sau khi đã đạt được mục đích (SQL chạy ok) thì phải set table_alias trở về nil để không bị lỗi các query khác.
* Arel có thể sử dụng liên tiếp (chainable), i.e. where(...).or(...) rất tiện lợi.
* Dễ dàng sửa đổi khi có những thay đổi về logic.
