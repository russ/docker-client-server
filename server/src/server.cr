require "kemal"

get "/" do |env|
  env.response.headers["Access-Control-Allow-Origin"] = "*"
  "..."
end

Kemal.run do |config|
  server = config.server.not_nil!
  server.bind_tcp("0.0.0.0", ENV.fetch("PORT", "3000").to_i, reuse_port: true)
end
