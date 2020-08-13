class SkillsController < ApplicationController
  before_action :authenticate_user!

  def index
    @skills = policy_scope(Skill)
  end

  def new
    @techs = Technology.all
    @levels = Level.all
    @skill = Skill.new
    @user = current_user
    authorize @skill
  end

end
