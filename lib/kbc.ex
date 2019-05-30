defmodule Kbc do
  @moduledoc """
  Documentation for Kbc.
  """

  def start do
    # create Quiz
    # Quiz.new
    take_input
  end

  def take_input do
    print_choose_options_message
    input = IO.gets "Enter an option \n"
    # collect input

    #   case String.trim input do
    #     "1" -> Quiz.ask_question(state)
    #     "2" -> feed_question_answers
    #     "0" -> calculate_score
    #   true -> IO.puts "wrong input message"
    # end
    # take_input()
  end

  def print_choose_options_message do
    IO.puts "Hello, choose appropriate option"
    IO.puts "1. next Question"
    IO.puts "2. previous Question"
    IO.puts "0. Show Score"
  end


end
