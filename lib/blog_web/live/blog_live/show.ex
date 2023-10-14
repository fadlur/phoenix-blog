defmodule BlogWeb.BlogLive.Show do
  use BlogWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def handle_params(%{"slug" => slug}, _url, socket) do
    {:noreply,
    socket
    |> apply_action(socket.assigns.live_action)
    |> assign(:slug, slug)
  }

  end



  defp apply_action(socket, :show) do
    socket
    |> assign(:page_title, "Blog")
  end
end
