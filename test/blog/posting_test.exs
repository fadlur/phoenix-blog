defmodule Blog.PostingTest do
  use Blog.DataCase

  alias Blog.Posting

  describe "post" do
    alias Blog.Posting.Post

    import Blog.PostingFixtures

    @invalid_attrs %{title: nil, slug: nil, content: nil}

    test "list_post/0 returns all post" do
      post = post_fixture()
      assert Posting.list_post() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Posting.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{title: "some title", slug: "some slug", content: "some content"}

      assert {:ok, %Post{} = post} = Posting.create_post(valid_attrs)
      assert post.title == "some title"
      assert post.slug == "some slug"
      assert post.content == "some content"
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Posting.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()

      update_attrs = %{
        title: "some updated title",
        slug: "some updated slug",
        content: "some updated content"
      }

      assert {:ok, %Post{} = post} = Posting.update_post(post, update_attrs)
      assert post.title == "some updated title"
      assert post.slug == "some updated slug"
      assert post.content == "some updated content"
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Posting.update_post(post, @invalid_attrs)
      assert post == Posting.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Posting.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Posting.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Posting.change_post(post)
    end
  end

  describe "post_tag" do
    alias Blog.Posting.PostTag

    import Blog.PostingFixtures

    @invalid_attrs %{}

    test "list_post_tag/0 returns all post_tag" do
      post_tag = post_tag_fixture()
      assert Posting.list_post_tag() == [post_tag]
    end

    test "get_post_tag!/1 returns the post_tag with given id" do
      post_tag = post_tag_fixture()
      assert Posting.get_post_tag!(post_tag.id) == post_tag
    end

    test "create_post_tag/1 with valid data creates a post_tag" do
      valid_attrs = %{}

      assert {:ok, %PostTag{} = post_tag} = Posting.create_post_tag(valid_attrs)
    end

    test "create_post_tag/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Posting.create_post_tag(@invalid_attrs)
    end

    test "update_post_tag/2 with valid data updates the post_tag" do
      post_tag = post_tag_fixture()
      update_attrs = %{}

      assert {:ok, %PostTag{} = post_tag} = Posting.update_post_tag(post_tag, update_attrs)
    end

    test "update_post_tag/2 with invalid data returns error changeset" do
      post_tag = post_tag_fixture()
      assert {:error, %Ecto.Changeset{}} = Posting.update_post_tag(post_tag, @invalid_attrs)
      assert post_tag == Posting.get_post_tag!(post_tag.id)
    end

    test "delete_post_tag/1 deletes the post_tag" do
      post_tag = post_tag_fixture()
      assert {:ok, %PostTag{}} = Posting.delete_post_tag(post_tag)
      assert_raise Ecto.NoResultsError, fn -> Posting.get_post_tag!(post_tag.id) end
    end

    test "change_post_tag/1 returns a post_tag changeset" do
      post_tag = post_tag_fixture()
      assert %Ecto.Changeset{} = Posting.change_post_tag(post_tag)
    end
  end

  describe "post_category" do
    alias Blog.Posting.PostCategory

    import Blog.PostingFixtures

    @invalid_attrs %{}

    test "list_post_category/0 returns all post_category" do
      post_category = post_category_fixture()
      assert Posting.list_post_category() == [post_category]
    end

    test "get_post_category!/1 returns the post_category with given id" do
      post_category = post_category_fixture()
      assert Posting.get_post_category!(post_category.id) == post_category
    end

    test "create_post_category/1 with valid data creates a post_category" do
      valid_attrs = %{}

      assert {:ok, %PostCategory{} = post_category} = Posting.create_post_category(valid_attrs)
    end

    test "create_post_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Posting.create_post_category(@invalid_attrs)
    end

    test "update_post_category/2 with valid data updates the post_category" do
      post_category = post_category_fixture()
      update_attrs = %{}

      assert {:ok, %PostCategory{} = post_category} = Posting.update_post_category(post_category, update_attrs)
    end

    test "update_post_category/2 with invalid data returns error changeset" do
      post_category = post_category_fixture()
      assert {:error, %Ecto.Changeset{}} = Posting.update_post_category(post_category, @invalid_attrs)
      assert post_category == Posting.get_post_category!(post_category.id)
    end

    test "delete_post_category/1 deletes the post_category" do
      post_category = post_category_fixture()
      assert {:ok, %PostCategory{}} = Posting.delete_post_category(post_category)
      assert_raise Ecto.NoResultsError, fn -> Posting.get_post_category!(post_category.id) end
    end

    test "change_post_category/1 returns a post_category changeset" do
      post_category = post_category_fixture()
      assert %Ecto.Changeset{} = Posting.change_post_category(post_category)
    end
  end
end
