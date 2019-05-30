defmodule Kbc.QuizItem do
  defstruct(
    question_id: nil,
    question_text: "",
    options: []
    # solution_id: nil
  )

  def display(q_item_id) do
    # Question from DB
    # IO.puts q.text
    # IO.puts q.options
  end

  def feed_question_answers do
    # ask repo for 5 items
    # store question ids
    QuizRepo.questions()
  end

end
