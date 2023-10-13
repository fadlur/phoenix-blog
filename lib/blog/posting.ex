defmodule Blog.Posting do
  @moduledoc """
  The Posting context.
  """

  import Ecto.Query, warn: false
  alias Blog.Repo

  alias Blog.Posting.Post

  @doc """
  Returns the list of post.

  ## Examples

      iex> list_post()
      [%Post{}, ...]

  """
  def list_post do
    Repo.all(Post)
  end

  @doc """
  Gets a single post.

  Raises `Ecto.NoResultsError` if the Post does not exist.

  ## Examples

      iex> get_post!(123)
      %Post{}

      iex> get_post!(456)
      ** (Ecto.NoResultsError)

  """
  def get_post!(id), do: Repo.get!(Post, id)

  @doc """
  Creates a post.

  ## Examples

      iex> create_post(%{field: value})
      {:ok, %Post{}}

      iex> create_post(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_post(attrs \\ %{}) do
    %Post{}
    |> Post.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a post.

  ## Examples

      iex> update_post(post, %{field: new_value})
      {:ok, %Post{}}

      iex> update_post(post, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_post(%Post{} = post, attrs) do
    post
    |> Post.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a post.

  ## Examples

      iex> delete_post(post)
      {:ok, %Post{}}

      iex> delete_post(post)
      {:error, %Ecto.Changeset{}}

  """
  def delete_post(%Post{} = post) do
    Repo.delete(post)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking post changes.

  ## Examples

      iex> change_post(post)
      %Ecto.Changeset{data: %Post{}}

  """
  def change_post(%Post{} = post, attrs \\ %{}) do
    Post.changeset(post, attrs)
  end

  alias Blog.Posting.PostTag

  @doc """
  Returns the list of post_tag.

  ## Examples

      iex> list_post_tag()
      [%PostTag{}, ...]

  """
  def list_post_tag do
    Repo.all(PostTag)
  end

  @doc """
  Gets a single post_tag.

  Raises `Ecto.NoResultsError` if the Post tag does not exist.

  ## Examples

      iex> get_post_tag!(123)
      %PostTag{}

      iex> get_post_tag!(456)
      ** (Ecto.NoResultsError)

  """
  def get_post_tag!(id), do: Repo.get!(PostTag, id)

  @doc """
  Creates a post_tag.

  ## Examples

      iex> create_post_tag(%{field: value})
      {:ok, %PostTag{}}

      iex> create_post_tag(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_post_tag(attrs \\ %{}) do
    %PostTag{}
    |> PostTag.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a post_tag.

  ## Examples

      iex> update_post_tag(post_tag, %{field: new_value})
      {:ok, %PostTag{}}

      iex> update_post_tag(post_tag, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_post_tag(%PostTag{} = post_tag, attrs) do
    post_tag
    |> PostTag.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a post_tag.

  ## Examples

      iex> delete_post_tag(post_tag)
      {:ok, %PostTag{}}

      iex> delete_post_tag(post_tag)
      {:error, %Ecto.Changeset{}}

  """
  def delete_post_tag(%PostTag{} = post_tag) do
    Repo.delete(post_tag)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking post_tag changes.

  ## Examples

      iex> change_post_tag(post_tag)
      %Ecto.Changeset{data: %PostTag{}}

  """
  def change_post_tag(%PostTag{} = post_tag, attrs \\ %{}) do
    PostTag.changeset(post_tag, attrs)
  end

  alias Blog.Posting.PostCategory

  @doc """
  Returns the list of post_category.

  ## Examples

      iex> list_post_category()
      [%PostCategory{}, ...]

  """
  def list_post_category do
    Repo.all(PostCategory)
  end

  @doc """
  Gets a single post_category.

  Raises `Ecto.NoResultsError` if the Post category does not exist.

  ## Examples

      iex> get_post_category!(123)
      %PostCategory{}

      iex> get_post_category!(456)
      ** (Ecto.NoResultsError)

  """
  def get_post_category!(id), do: Repo.get!(PostCategory, id)

  @doc """
  Creates a post_category.

  ## Examples

      iex> create_post_category(%{field: value})
      {:ok, %PostCategory{}}

      iex> create_post_category(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_post_category(attrs \\ %{}) do
    %PostCategory{}
    |> PostCategory.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a post_category.

  ## Examples

      iex> update_post_category(post_category, %{field: new_value})
      {:ok, %PostCategory{}}

      iex> update_post_category(post_category, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_post_category(%PostCategory{} = post_category, attrs) do
    post_category
    |> PostCategory.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a post_category.

  ## Examples

      iex> delete_post_category(post_category)
      {:ok, %PostCategory{}}

      iex> delete_post_category(post_category)
      {:error, %Ecto.Changeset{}}

  """
  def delete_post_category(%PostCategory{} = post_category) do
    Repo.delete(post_category)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking post_category changes.

  ## Examples

      iex> change_post_category(post_category)
      %Ecto.Changeset{data: %PostCategory{}}

  """
  def change_post_category(%PostCategory{} = post_category, attrs \\ %{}) do
    PostCategory.changeset(post_category, attrs)
  end
end
