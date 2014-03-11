defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])

    conn.assign :layout, "main"
  end

  # It is common to break your Dynamo into many
  # routers, forwarding the requests between them:
  # forward "/posts", to: PostsRouter

  get "/" do
    conn = conn.assign(:title, "Welcome to Webapp!")
    render conn, "index.html"
  end

  get "/stream" do
    conn = conn.resp_content_type("text/event-stream")
    conn = conn.send_chunked(200)
  end
end
