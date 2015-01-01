use Mix.Config

config :phoenix_blog, PhoenixBlog.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
