defmodule UmbrellaProject.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end
  
 def deps do
  [{:logger_json, "~> 3.0"}]
 end
 
 def application do
  [extra_applications: [:jason, :logger_json]]
end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    [
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:distillery, "~> 2.0"},
      {:config_tuples, "~> 0.2.0"},
      {:telemetry, "~> 0.3"}
    ]
  end
end

