defmodule Kbc.Quiz do
  alias Kbc.{ Question, QuizRepo, QuizItem }

  defstruct(
    name: "",
    question_answers: [],
    answersheet: [],
    score: 0
  )

  def new do
    take_input()
  end

  def take_input do
    IO.puts "Hello, choose appropriate option"
    IO.puts "1. Ask next Question"
    IO.puts "2. Add a new Question"
    IO.puts "0. Show Score"
    input = IO.gets "Enter an option \n"
    # collect input

    case String.trim input do
      "1" -> ask_question_and_collect_answer
      "2" -> feed_question_answers
      "0" -> calculate_score
      true -> IO.puts "wrong input message"
    end
    take_input()
  end

  def hello_message do

  end

  defp record_answer(q_id, answer_option) do
    # add answer to hash
  end

  def ask_question_and_collect_answer do
    # if no question, then "no questions left, quiz complete"
  end

  defp calculate_score do
    #
  end

  def feed_question_answers do
    # ask repo for 5 items
    QuizRepo.questions()
  end

end
