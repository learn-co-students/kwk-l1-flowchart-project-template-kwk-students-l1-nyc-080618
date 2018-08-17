class Question
  attr_accessor :prompt, :answer
  def initialize(prompt,answer)
    @prompt = prompt
    @answer = answer
  end
end
  p1 = "1. How many tons of food do Americans throw away every year?\n(a)38 million\n(b)28 million\n(c)4 million\n(d)16 million"
  p2 = "2. In the United States, food waste is estimated at about what percent of the food supply?\n(a)10\n(b)30\n(c)100\n(d)60"
  p3 = "3. How many meters of water can we expect to flood coastal cities by 2100?\n(a)3\n(b)2\n(c)6\n(d)1"
  p4 = "4. How many flowers can a single bee colony polinate every day?\n(a)300 million\n(b)500 million\n(c)2 million\n(d)3 million"
  p5 = "5. What can you not compost?\n(a)grass\n(b)fruit\n(c)dairy\n(d)eggshells"

questions = [
 Question.new(p1, "a"),
  Question.new(p2, "b"),
  Question.new(p3, "b"),
  Question.new(p4, "a"),
  Question.new(p5, "c")
]
 
  def run_test(questions)
    answer = ""
    score = 0
    for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score += 1
      puts "Congrats!  You got it right!\n\n"
    else 
      puts "Incorrect! The correct answer was #{question.answer}\n\n."
  end
  end
  puts ("You got" + score.to_s + "/" + questions.length().to_s)
  end
  
  run_test(questions)
