class Quiz
    def initialize(questions)
      @questions = questions
    end
  
    def take
      @questions.each_with_index do |question_data, index|
        question_text, answer_options = question_data.split("|")
        answer_options = answer_options.split(",")
  
        define_method("question_#{index + 1}") do
          puts question_text
          answer_options.each_with_index do |option, option_index|
            puts "#{option_index + 1}. #{option}"
          end
          gets.chomp
        end
  
        user_answer = send("question_#{index + 1}")
  
      end
    end
  end
  
  questions = [
    "What is the capital of the Philippines?|Manila,Cebu,Davao",
    "What is the capital of Japan?|Tokyo,Kyoto,Osaka",
  ]
  
  quiz = Quiz.new(questions)
  quiz.take
  