defmodule BlogWeb.PostLive.Index do
  use BlogWeb, :live_view

  alias Blog.Posting
  alias Blog.Posting.Post

  @impl true
  def mount(_params, _session, socket) do
    {:ok, stream(socket, :post_collection, Posting.list_post())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Post")
    |> assign(:post, Posting.get_post!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Post")
    |> assign(:post, %Post{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Post")
    |> assign(:post, nil)
  end

  @impl true
  def handle_info({BlogWeb.PostLive.FormComponent, {:saved, post}}, socket) do
    {:noreply, stream_insert(socket, :post_collection, post)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    post = Posting.get_post!(id)
    {:ok, _} = Posting.delete_post(post)

    {:noreply, stream_delete(socket, :post_collection, post)}
  end
end
