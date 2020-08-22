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

  def create
    @user = current_user
    @skill = current_user.skills.new(skill_params)
    authorize @skill
    if @skill.save
      redirect_to user_skills_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    authorize @skill
    @user = current_user
    @skill.destroy
    redirect_to user_skills_path(current_user)
  end

  private

  def skill_params
    params.require(:skill).permit(:technology_id, :level_id)
  end


end
