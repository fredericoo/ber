import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ber, BerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ZflSFQrP6R7awocad+FUYSuSq9PTVgXrXQFkf05eh3rpbw6G48EY+aHQKxHH2ATc",
  server: false

# In test we don't send emails.
config :ber, Ber.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
