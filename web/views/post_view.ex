defmodule Blog.PostView do
  use Blog.Web, :view
  use JaSerializer.PhoenixView

  attributes [:title, :body, :author, :inserted_at, :updated_at]

end
