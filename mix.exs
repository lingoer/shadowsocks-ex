defmodule Shadowsocks.Mixfile do
  use Mix.Project

  @url "https://github.com/paulzql/shadowsocks-ex"

  def project do
    [app: :shadowsocks,
     version: "0.5.0",
     elixir: "~> 1.7",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: "elixir port of shadowsocks",
     source_url: @url,
     homepage_url: @url,
     name: "shadowsocks",
     docs: docs(),
     package: package()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :crypto],
     mod: {Shadowsocks.Application, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:hkdf, "~> 0.1.0"},
      {:distillery, "~> 2.0"}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"]
    ]
  end

  defp package do
    %{
      maintainers: ["Paul Zhou"],
      licenses: ["BSD 3-Clause"],
      links: %{"Github" => @url}
    }
  end
end
