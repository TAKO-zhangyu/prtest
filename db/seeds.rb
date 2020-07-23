user9 = User.create!(email: "hoge@exam.com", password: "password")
user10 = User.create!(email: "fuga@exam.com", password: "password")

user9.boards.create!(title: "hoge")
user10.boards.create!(title: "fuga")
user9.boards.create!(title: "hoge2")
user10.boards.create!(title: "fuga2")
