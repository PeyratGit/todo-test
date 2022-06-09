Todo.destroy_all
Todo.create(title: "Shopping", state: false, user_id: 1, description: "Eggs and rice")
Todo.create(title: "Workout", state: false, user_id: 1)
Todo.create(title: "Eat", state: true, user_id: 1)
Todo.create(title: "Walk", state: true, user_id: 1)
Todo.create(title: "Read", state: true, user_id: 1)
