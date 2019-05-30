defmodule Kbc.QuizRepo do

  def questions(count \\ 5) do
    [question, question]
  end

  defp question do
    %{
      question_id: 0,
      question_text: "lorel ipsum",
      options: [a: "abc", b: "def", c: "ghi", d: "xyz"],
    }
  end

end
