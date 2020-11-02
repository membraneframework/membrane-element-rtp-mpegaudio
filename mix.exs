defmodule Membrane.RTP.MPEGAudio.MixProject do
  use Mix.Project

  @version "0.4.0-alpha"
  @github_url "https://github.com/membraneframework/membrane_rtp_mpegaudio_plugin"

  def project do
    [
      app: :membrane_rtp_mpegaudio_plugin,
      version: @version,
      elixir: "~> 1.9",
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),

      # Hex
      description: "Membrane Multimedia Framework (RTP MPEGAudio Plugin)",
      package: package(),

      # docs
      name: "Membrane Plugin: RTP MPEGAudio",
      source_url: @github_url,
      docs: docs(),
      homepage_url: "https://membraneframework.org"
    ]
  end

  def application do
    [
      extra_applications: []
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_env), do: ["lib"]

  defp docs do
    [
      main: "readme",
      extras: ["README.md"],
      source_ref: "v#{@version}"
    ]
  end

  defp package do
    [
      maintainers: ["Membrane Team"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => @github_url,
        "Membrane Framework Homepage" => "https://membraneframework.org"
      }
    ]
  end

  defp deps do
    [
      {:membrane_core, "~> 0.5.0"},
      {:membrane_rtp_format, "~> 0.2.0-alpha"},
      {:membrane_stream_format,
       github: "membraneframework/membrane_stream_format", branch: :develop},
      {:membrane_caps_audio_mpeg, "~> 0.2.0"},

      # dev
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:dialyxir, "~> 1.0.0", only: :dev, runtime: false}
    ]
  end
end
