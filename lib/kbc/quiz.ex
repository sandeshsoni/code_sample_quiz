defmodule Kbc.Quiz do
  alias Kbc.{ Question, QuizRepo, QuizItem }

  defstruct(
    # name: "",
    quiz_items: [],
    # question_answers: [],
    answersheet: [],
    # score: 0
  )

  def new do
    %Kbc.Quiz{
      quiz_items: feed_question_answers
    }
  end

  # def start(%{quiz_items: questions, answers_sheet: answers_sheet} = state) do
  def start(state) do
    # %{quiz_items: questions, answers_sheet: answers_sheet} = state
    quiz_items = state.quiz_items
    answers_sheet = state.answersheet
    # print question
    # ask answer

    # next question or score

    for q_id <- quiz_items do
      input_answer = ask_question_and_collect_answer(q_id)
      new_answer_sheet = Map.put(answers_sheet, q_id, input_answer)
    end


    # %{state | %{ quiz_items: remaining_items, answers_sheet } }
    # return the updated state, removing quiz_line_item and storing the answer
  end

  # defp take_input do
  #   print_choose_options_message
  #   input = IO.gets "Enter an option \n"
  #   # collect input

  #   case String.trim input do
  #     "1" -> ask_question_and_collect_answer
  #     "2" -> feed_question_answers
  #     "0" -> calculate_score
  #     true -> IO.puts "wrong input message"
  #   end
  #   # take_input()
  # end

  # def print_choose_options_message do
  #   IO.puts "Hello, choose appropriate option"
  #   IO.puts "1. Ask next Question"
  #   IO.puts "2. Add a new Question"
  #   IO.puts "0. Show Score"
  # end

  # defp record_answer(q_id, answer_option) do
  #   # add answer to hash
  # end

  defp ask_question_and_collect_answer(q) do
    # if no question, then "no questions left, quiz complete"
    # [q | remainig] = state.question_answers

    Question.display_with_options(q)
    input_answer = IO.gets "Enter option"
  end

  def calculate_score(%{ "question": qs, answer_sheet: answers_sheet } = state) do
    # QuizItem
  end

  def feed_question_answers do
    # ask repo for 5 items
    QuizRepo.questions()
  end

end
