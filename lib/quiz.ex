defmodule Kbc.Quiz do
  alias Kbc.QuizRepo

  defstruct(
    name: "",
    question_answers: [],
    answersheet: [],
    score: 0
  )

  def feed_question_answers do
    # ask repo for 5 items
    QuizRepo.questions()
  end

end
