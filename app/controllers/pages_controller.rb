class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
    @projects = policy_scope(Project)
  end

  def about

  end
end
