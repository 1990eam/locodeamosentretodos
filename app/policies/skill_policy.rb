class SkillPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: @user)
    end
  end

  def new?
    true
  end

  def create?
    new?
  end
end
