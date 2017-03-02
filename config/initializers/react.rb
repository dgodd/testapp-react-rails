# Be sure to restart your server when you modify this file.

# Settings for the pool of renderers:
# Rails.application.config.react.server_renderer_pool_size  ||= 1  # ExecJS doesn't allow more than one on MRI
# Rails.application.config.react.server_renderer_timeout    ||= 20 # seconds
Rails.application.config.react.server_renderer = React::ServerRendering::SprocketsRenderer
Rails.application.config.react.server_renderer_options = {
  files: ["react-server.js", "components.js"], # files to load for prerendering
  replay_console: true,                 # if true, console.* will be replayed client-side
}
Rails.application.config.assets.precompile += %w( react-server.js components.js )
