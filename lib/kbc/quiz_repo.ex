defmodule Kbc.QuizRepo do

  def questions(count \\ 5) do
    [question, question]
  end

  defp question do
    %{
      q: "lorel ipsum",
      incorrect_options: ["abc", "def", "ghi"],
      correct_option: "xyz"
    }
  end

end
