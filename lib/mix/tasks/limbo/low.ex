defmodule Mix.Tasks.Limbo.Low do
  @moduledoc """
  ### In seperate terminal window run 
  ` MIX_ENV=test mix limbo.low `
  This will run tests and save commits if/when the test passes, and REVERT if test fails.

  """
  use Mix.Task
  require Logger

  @preferred_cli_env :test
  @shortdoc "Runs Test-Commit-Revert Loop"
  def run(args) do
    args_string = List.to_string(args)
    IO.puts("RUNNING TESTS #{args_string}")
    System.put_env("MIX_ENV", "test")

    case Mix.Tasks.Test.run(~w|test #{args_string}|) do
      :ok ->
        git(~w[commit -am limbo-commit])

      _ ->
        IO.puts("Test Failed. Code Reverted.")
        git(~w[reset --hard])
    end
  end

  def git(args) do
    IO.puts("git #{Enum.join(args, " ")}")
    System.cmd("git", args)
  end
end
