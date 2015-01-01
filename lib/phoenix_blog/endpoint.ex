defmodule PhoenixBlog.Endpoint do
  use Phoenix.Endpoint, otp_app: :phoenix_blog

  plug Plug.Static,
    at: "/", from: :phoenix_blog

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_phoenix_blog_key",
    signing_salt: "i0UlHXT/",
    encryption_salt: "Mf/0gPK1"

  plug :router, PhoenixBlog.Router
end
