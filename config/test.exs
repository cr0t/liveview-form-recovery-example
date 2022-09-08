import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :recovery, RecoveryWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "2CF3tpCbInVfQT2vka/hNfkfKvZmsQW5FwxIffI6uv0oZesE2ea4mLeGZR0e9fGf",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
