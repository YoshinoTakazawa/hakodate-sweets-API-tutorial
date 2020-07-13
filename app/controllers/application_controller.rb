class ApplicationController < ActionController::API
  # 例外処理
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  # rescue_from Exception, with: :render_500

  def render_404
    render status: :not_found
  end

  def render_500
    render status: :internal_server_error
  end
end
