defmodule Kbc.QuizItem do
  alias Kbc.QuizRepo
  defstruct(
    question_id: nil,
    question_text: "",
    options: []
  )

  def display(item) do
    IO.puts "question"
    IO.puts item.question_text
    IO.puts seperator
    IO.puts "options"
    IO.puts seperator
  end

  defp seperator, do: "------------------------"

  def feed_question_answers do
    # ask repo for 5 items
    # store question and options
    # options: [a: "abc", b: "def", c: "ghi", d: "xyz"],
    QuizRepo.questions()
  end

end
