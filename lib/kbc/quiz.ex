defmodule Kbc.Quiz do
  alias Kbc.{ Question, QuizRepo, QuizItem }

  defstruct(
    quiz_items: [],
    answersheet: [],
    current_position: 0,
    score: 0
  )

  def new do
    %Kbc.Quiz{
      quiz_items: QuizItem.feed_question_answers,
      current_position: 0
    }
  end

  def ask_previous_question(state) do
    #  ask_question, with position as minus 1
    # ask_question(%{state | state.current_position})
  end

  def ask_question(state) do
    quiz_item = Enum.at(state.quiz_items, state.current_position)
    answer = ask_question_and_collect_answer(quiz_item)

    %{state | answersheet: Map.put(state.answersheet, quiz_item.question_id, answer)  }
  end


  def score(%{answer_sheet: answers_sheet } = state) do
    QuizRepo.calculate_score(answers_sheet)
  end

  defp ask_question_and_collect_answer(item) do
    QuizItem.display(item)
    # IO.gets "Enter option"
    # add validation if needed. A, B, C, D
    "B"
  end

end
