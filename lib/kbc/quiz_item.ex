defmodule Kbc.QuizItem do
  alias Kbc.{QuizRepo, Question}
  defstruct(
    question_id: nil,
    question: nil
  )

  def new do
  end

  def display(item) do
    IO.puts "question"
    IO.puts item.text
    IO.puts seperator
    IO.puts "options"
    IO.puts seperator
  end

  defp seperator, do: "------------------------"

  def feed_question_answers do
    # ask repo for 5 items
    # store question and options
    # options: [a: "abc", b: "def", c: "ghi", d: "xyz"],
    # QuizRepo.questions()
    # Kbc.Question.new("lorel ipsum",  [])

    quests_from_api = QuizRepo.questions()

    quests_from_api
    |> Enum.map(fn raw_q ->
      %Kbc.QuizItem{
        question: Question.new(
          raw_q.question_text,
          raw_q.correct_option,
          raw_q.incorrect_options)}
    end)
  end

  # def add_question do
  #   Kbc.Question.new("lorel ipsum",  [])
  # end

end
