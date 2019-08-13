defmodule Balloondashboard.GithubDeployFunctions do
  def start_deploy() do
    :ok
  end

  def create_org() do
    :timer.sleep(1000)
    {:ok, "FirstOrg"}
  end

  def create_repo(org) do
    :timer.sleep(1000)
    {:ok, "FirstRepo"}
  end

  def push_contents(repo) do
    :timer.sleep(1000)
    :ok
  end
end
