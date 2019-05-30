defmodule Kbc.QuizRepo do

  def questions(count \\ 5) do
    [question, question]
  end

  defp question do
    # We must get such response from API
    %{
      question_id: Enum.random( 0..99 ),
      question_text: "lorel ipsum",
      correct_option: "xyz",
      incorrect_options: ["abc", "def", "ghi"]
    }
  end

  # defp question do
  #   # Kbc.Question.new("lorel ipsum",  [])
  # end

end
