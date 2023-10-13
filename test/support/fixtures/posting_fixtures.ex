defmodule Blog.PostingFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Blog.Posting` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        content: "some content",
        slug: "some slug",
        title: "some title"
      })
      |> Blog.Posting.create_post()

    post
  end

  @doc """
  Generate a post_tag.
  """
  def post_tag_fixture(attrs \\ %{}) do
    {:ok, post_tag} =
      attrs
      |> Enum.into(%{

      })
      |> Blog.Posting.create_post_tag()

    post_tag
  end

  @doc """
  Generate a post_category.
  """
  def post_category_fixture(attrs \\ %{}) do
    {:ok, post_category} =
      attrs
      |> Enum.into(%{

      })
      |> Blog.Posting.create_post_category()

    post_category
  end
end
