use Mix.Config

config :nerves_hub_cli,
  home_dir: Path.expand("nerves-hub"),
  ca_certs: Path.expand("../test/fixtures/ca_certs", __DIR__)

# Shared Configuration.
config :nerves_hub_link_http,
  ca_certs: Path.expand("../test/fixtures/ca_certs", __DIR__),
  client: NervesHubLinkHTTP.ClientMock,
  # Device HTTP connection.
  device_api_host: "0.0.0.0",
  device_api_port: 4001

# API HTTP connection.
config :nerves_hub_user_api,
  host: "0.0.0.0",
  port: 4002

config :nerves_runtime, :kernel, autoload_modules: false
config :nerves_runtime, target: "host"

config :nerves_runtime, :modules, [
  {Nerves.Runtime.KV, Nerves.Runtime.KV.Mock}
]
