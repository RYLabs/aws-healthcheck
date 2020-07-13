module Healthcheck
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      return [200, {}, []] if env['PATH_INFO'] == '/_healthcheck'
      @app.call env
    end
  end
end
