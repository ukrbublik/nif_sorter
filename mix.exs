defmodule Mix.Tasks.Compile.NifSorter do
  def run(_) do
    File.mkdir_p("priv")
    {result, _error_code} = System.cmd("make", ["priv/nif_sorter.so"], stderr_to_stdout: true)
    Mix.shell.info result
    :ok
  end
end

defmodule NifSorter.Mixfile do
  use Mix.Project

  def project do
    [
      app: :nif_sorter,
      version: "0.2.0",
      elixir: "~> 1.7",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      compilers: [:nif_sorter] ++ Mix.compilers,
      elixirc_paths: elixirc_paths(Mix.env),
      deps: deps(),
      name: "nif_sorter",
      source_url: "https://github.com/ukrbublik/nif_sorter",
      package: package(),
      description: description(),
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:bench), do: ["lib", "test/support"]
  defp elixirc_paths(:test),  do: ["lib", "test/support"]
  defp elixirc_paths(_),      do: ["lib"]

  def application do
    []
  end

  defp deps do
    [
      {:benchee, "~> 1.0", only: :bench},
      {:benchee_markdown, "~> 0.1", only: :bench},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      name: "nif_sorter",
      files: ~w(lib c_src config bench test mix.exs Makefile README*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/ukrbublik/nif_sorter"}
    ]
  end

  defp description do
    "NIF sort typed list"
  end
end