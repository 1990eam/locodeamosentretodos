class SkillPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: @user)
    end
  end

  def index
    true
  end

  def new?
    true
  end

  def create?
    new?
  end

  def destroy?
    record.user == user
  end
end
