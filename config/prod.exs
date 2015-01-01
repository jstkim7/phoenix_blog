use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix_blog, PhoenixBlog.Endpoint,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "I4l7wKW/3g4IB5HOywznerynyUkmvE2BWfIF2grRmZ2oWJFSDBPe9pHIKTPK2dj2"

config :logger,
  level: :info
