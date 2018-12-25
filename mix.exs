defmodule Limbo.MixProject do
  use Mix.Project

  def project do
    [
      app: :limbo,
      version: "0.1.0",
      elixir: "~> 1.6",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  defp package() do
    [
      files: ~w(lib  .formatter.exs mix.exs README*  LICENSE* CHANGELOG* ),
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/mwindholtz/limbo"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp description() do
    "Mix tasks to support test-commit-revert style coding"
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
