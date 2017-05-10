defmodule Blog.UserTest do
  use Blog.ModelCase

  alias Blog.User

  @valid_attrs %{email: "jim@email.com", password: "12345678", password_confirmation: "12345678"}
  @invalid_attrs %{email: "jimemail.com", password: "12345678", password_confirmation: "12345678"}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
