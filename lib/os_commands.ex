defmodule OsCommands do
  alias Porcelain.Result

  @moduledoc """
  Documentation for `OsCommands`.
  """

  @doc """
  List

  ## Examples

      iex> OsCommands.list "/usr"

  """
  def list( path \\ "." ) do
    %Result{out: output, status: status} = Porcelain.exec("ls", [path])
    IO.puts status
    IO.puts output
  end

  @doc """
  Run

  ## Examples

      iex> OsCommands.run("date")
      

  """
  def run(command, options \\ "") do
    %Result{out: output, status: status} = Porcelain.shell("#{command} #{options}")
    IO.puts status
    IO.puts output
  end
end
