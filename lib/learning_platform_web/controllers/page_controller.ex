defmodule LearningPlatformWeb.PageController do
  use LearningPlatformWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
  
end
