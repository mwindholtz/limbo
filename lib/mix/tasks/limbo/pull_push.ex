defmodule Mix.Tasks.Limbo.PullPush do
  @moduledoc """
  ### In a terminal window run
  `mix limbo.pull_push`
  This will push commits to the trunk whenever they are created by `mix limbo.test` which you can run occasionally manually in another terminal window.
  """
  use Mix.Task

  @preferred_cli_env :test
  @shortdoc "Runs Git Pull/Push Loop"
  def run(_args) do
    IO.inspect("RUNNING PUSH PULL")
    push_pull()
  end

  def push_pull do
    System.cmd("git", ~w[pull --rebase])
    System.cmd("git", ~w[push])
    Process.sleep(2000)
    push_pull()
  end
end
