defmodule Blog.Repo.Migrations.CreatePostCategory do
  use Ecto.Migration

  def change do
    create table(:post_category) do
      add :post_id, references(:post, on_delete: :nothing)
      add :category_id, references(:category, on_delete: :nothing)

      timestamps()
    end

    create index(:post_category, [:post_id])
    create index(:post_category, [:category_id])
  end
end
