user1 = User.create name: "Kien"
user2 = User.create name: "Obama"
user3 = User.create name: "Bush"

room1 = ChatRoom.create title: "Room 1"
room2 = ChatRoom.create title: "Room 2"
room3 = ChatRoom.create title: "Room 3"

post1 = Post.create content: "post1: Kien's post 1 on Room 1", author: user1, parent: room1
comment1 = Comment.create content: "user2 comments on post 1 room 1", author: user2
comment2 = Comment.create content: "user3 comments on post 1 room 1", author: user3
comment3 = Comment.create content: "user1 comments on post 1 room 1", author: user1

post2 = Post.create content: "post2: Obama's post 2 on Room 1", author: user2, parent: room1
comment4 = Comment.create content: "user1 comments on post 2 room 1", author: user1
comment5 = Comment.create content: "user2 comments on post 2 room 1", author: user2

post3 = Post.create content: "post3: Bush's post 1 on Room 2", author: user3, parent: room2
comment6 = Comment.create content: "user1 comments on post 1 room 2", author: user1
comment7 = Comment.create content: "user2 comments on post 1 room 2", author: user2

post4 = Post.create content: "post4: Bush's post 1 on Room 3", author: user3, parent: room3
comment8 = Comment.create content: "user2 comments on post 1 room 3", author: user2
comment9 = Comment.create content: "user3 comments on post 1 room 3", author: user3

