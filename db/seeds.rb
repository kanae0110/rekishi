Category.create(name: "事件", period: "江戸末期")
Category.create(name: "人物", period: "江戸末期")

SubCategory.create(category_id: 1, name: "黒船来航")
Quiz.create(sub_category_id: 2, question: "龍馬が暗殺された場所はどこか？", answer1: "寺田屋", answer2: "近江屋", answer3: "池田屋", answer: "近江屋", description: "慶応三年１１月１５日近江屋にて暗殺"
)