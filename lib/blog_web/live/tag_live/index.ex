defmodule BlogWeb.TagLive.Index do
  use BlogWeb, :live_view

  alias Blog.Tags
  alias Blog.Tags.Tag

  @impl true
  def mount(_params, _session, socket) do
    {:ok, stream(socket, :tag_collection, Tags.list_tag())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Tag")
    |> assign(:tag, Tags.get_tag!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Tag")
    |> assign(:tag, %Tag{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Tag")
    |> assign(:tag, nil)
  end

  @impl true
  def handle_info({BlogWeb.TagLive.FormComponent, {:saved, tag}}, socket) do
    {:noreply, stream_insert(socket, :tag_collection, tag)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    tag = Tags.get_tag!(id)
    {:ok, _} = Tags.delete_tag(tag)

    {:noreply, stream_delete(socket, :tag_collection, tag)}
  end
end
