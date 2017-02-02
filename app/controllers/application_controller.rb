class ApplicationController < ActionController::Base
  before_action :set_i18n_locale
  def set_i18n_locale
    I18n.locale = :fr
  end

  def current_user
    User.last
  end
end
