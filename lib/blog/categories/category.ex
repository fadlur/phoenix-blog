defmodule Blog.Categories.Category do
  use Ecto.Schema
  import Ecto.Changeset

  schema "category" do
    field :description, :string
    field :title, :string
    field :slug, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:slug, :title, :description])
    |> validate_required([:slug, :title, :description])
  end
end
