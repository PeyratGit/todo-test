Todo.destroy_all
User.destroy_all
User.create(email: "peyrat.clement@gmail.com", password: "123456")
Todo.create(title: "Shopping", state: false, user_id: 1, description: "Eggs and rice")
Todo.create(title: "Workout", state: false, user_id: 1)
Todo.create(title: "Eat", state: true, user_id: 1)
Todo.create(title: "Walk", state: true, user_id: 1)
Todo.create(title: "Read", state: true, user_id: 1)
