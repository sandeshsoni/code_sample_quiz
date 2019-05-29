defmodule Kbc.Question do

  defstruct(
    id: nil,
    text: "",
    options: [],
    solution_id: nil
  )

  def add_options(options) do
    # correct option
  end

  def display_with_options(qid) do
    # Question from DB
    # IO.puts q.text
    # IO.puts q.options
  end

end
