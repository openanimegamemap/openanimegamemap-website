class BrowseController < ApplicationController
  layout :map_layout

  before_action :authorize_web
  before_action :set_locale
  before_action -> { check_database_readable(:need_api => true) }
  before_action :require_oauth
  before_action :update_totp, :only => [:query]
  around_action :web_timeout
  authorize_resource :class => false

  def query; end
end
