defmodule BalloondashboardWeb.DashboardView do
  use Phoenix.LiveView

  def render(assigns) do
    BalloondashboardWeb.PageView.render("dashboard.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, assign(socket, counter: 3, state: :unset)}
  end

  def handle_event("prime", _value, socket) do
    c = 3
    send(self(), {:priming, c - 1})
    {:noreply, assign(socket, counter: c, state: :priming)}
  end

  def handle_info({:priming, c}, socket) when c > 0 do
    :timer.sleep(1000)
    send(self(), {:priming, c - 1})
    {:noreply, assign(socket, counter: c, state: :priming)}
  end

  def handle_info({:priming, c}, socket) when c == 0 do
    :timer.sleep(1000)
    {:noreply, assign(socket, counter: c, state: :primed)}
  end
end
