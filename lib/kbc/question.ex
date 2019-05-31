defmodule Kbc.Question do

  defstruct(
    id: nil,
    text: "",
    correct_option: nil,
    options: []
  )

  def new(questions) when is_list(questions) do
    Enum.map(questions,
      fn ({ txt, correct, incorrect_opts }) -> new(txt, correct, incorrect_opts)
      end)
  end

  def new(text, correct_opt, incorrect_options) do
    # A, B, C, D
    keyz = Enum.shuffle ~w(A B C D)
    correct = List.first keyz
    options = Enum.zip(keyz, [correct_opt | incorrect_options])

    %Kbc.Question{
      id: Enum.random( 0..99 ),
      text: text,
      options: options,
      correct_option: correct
    }
  end

  def display(question) do
    IO.puts "question"
    IO.puts question.text

    IO.puts seperator
    question.options
    |> Enum.sort
    |> Enum.each fn {letter, opt} -> IO.puts "#{letter}. #{opt}" end
    IO.puts seperator
  end

  defp seperator, do: "------------------------"

  # def add_question_answer do
  # end

  # def add_options(options) do
  #   # correct option
  # end


end
