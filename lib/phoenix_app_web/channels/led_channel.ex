defmodule PhoenixAppWeb.LEDChannel do
  use PhoenixAppWeb, :channel

  def join("led:lobby", _payload, socket) do
    {:ok, socket}
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  def handle_in("toggle", payload, socket) do
    broadcast socket, "toggle", payload
    {:reply, :ok, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (led:lobby).
  def handle_in("shout", payload, socket) do

    {:noreply, socket}
  end
end
