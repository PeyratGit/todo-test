Todo.destroy_all
User.destroy_all
User.create(email: "peyrat.clement@gmail.com", password: "123456")
Todo.create(title: "Shopping", state: false, user: User.first, description: "Eggs and rice")
Todo.create(title: "Workout", state: false, user: User.first)
Todo.create(title: "Eat", state: true, user: User.first)
Todo.create(title: "Walk", state: true, user: User.first)
Todo.create(title: "Read", state: true, user: User.first)
