defmodule Blog.Posting.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "post" do
    field :title, :string
    field :slug, :string
    field :content, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:slug, :title, :content])
    |> validate_required([:slug, :title, :content])
  end
end
