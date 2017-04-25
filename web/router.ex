defmodule Blog.Router do
  use Blog.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
  end

  scope "/api", Blog do
    pipe_through :api
    resources "/posts", PostController
  end
end
