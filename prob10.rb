class Quiz
  def initialize(questions)
    @questions = questions
    generate_question_methods
  end

  def take
    @questions.each do |question_data|
      question_text, _ = question_data.split("|") 
      send("question_#{question_text.strip}")
    end
  end

  def generate_question_methods
    @questions.each do |question_data|
      question_text, _ = question_data.split("|")  
      define_singleton_method("question_#{question_text.strip}") do
        puts question_text
      end
    end
  end
end

questions = [
  "What is the capital of the Philippines?|Manila",
  "What is the capital of Japan?|Tokyo"
]

quiz = Quiz.new(questions)
quiz.take