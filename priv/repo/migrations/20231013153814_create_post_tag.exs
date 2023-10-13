defmodule Blog.Repo.Migrations.CreatePostTag do
  use Ecto.Migration

  def change do
    create table(:post_tag) do
      add :post_id, references(:post, on_delete: :nothing)
      add :tag_id, references(:tag, on_delete: :nothing)

      timestamps()
    end

    create index(:post_tag, [:post_id])
    create index(:post_tag, [:tag_id])
  end
end
