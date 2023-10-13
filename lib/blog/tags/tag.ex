defmodule Blog.Tags.Tag do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tag" do
    field :title, :string
    field :slug, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(tag, attrs) do
    tag
    |> cast(attrs, [:slug, :title])
    |> validate_required([:slug, :title])
  end
end
