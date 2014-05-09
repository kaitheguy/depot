class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_latest_product
  def get_latest_product
    @latest_product = Product.order(:updated_at).last
  end
end
