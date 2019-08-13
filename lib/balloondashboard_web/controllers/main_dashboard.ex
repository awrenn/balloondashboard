defmodule BalloondashboardWeb.MainDashboardController do
  use BalloondashboardWeb, :controller
  alias Phoenix.LiveView

  def main(conn, _params) do
    LiveView.Controller.live_render(conn, BalloondashboardWeb.DashboardView, session: %{})
  end
end
