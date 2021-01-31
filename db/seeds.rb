Category.create(name: "事件", period: "江戸末期")
Category.create(name: "人物", period: "江戸末期")

SubCategory.create(category_id: 1, name: "黒船来航")
Quiz.create(sub_category_id: 2, question: "龍馬が暗殺された場所はどこか？", answer1: "寺田屋", answer2: "近江屋", answer3: "池田屋", answer: "近江屋", discription: "慶応三年１１月１５日近江屋にて暗殺"
)

Story.create(name: "龍馬の生い立ち", category: "人物")
Story.create(name: "とある貴族の幕末京都", category: "人物")
Story.create(name: "天誅", category: "事件")
Story.create(name: "京の戦い", category: "戦")

User.create(name: "ゲスト1", email: "guest1@example.com", password: "password", password_confirmation: "password")
User.create(name: "ゲスト2", email: "guest2@example.com", password: "password", password_confirmation: "password")
User.create(name: "ゲスト3", email: "guest3@example.com", password: "password", password_confirmation: "password")