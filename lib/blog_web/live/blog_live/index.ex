defmodule BlogWeb.BlogLive.Index do
  use BlogWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Blog")
  end
end
