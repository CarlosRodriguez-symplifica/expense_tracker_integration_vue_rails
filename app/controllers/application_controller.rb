class ApplicationController < ActionController::Base
  include Auth
  include InertiaCsrf

  before_action { RequestLocals[:current_controller] = self }

  inertia_share auth: -> {
    {
      user: current_user.as_json(only: [:email])
    }
  }
end
