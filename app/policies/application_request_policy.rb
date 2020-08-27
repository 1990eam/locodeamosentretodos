class ApplicationRequestPolicy < ApplicationPolicy
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

  def accept?
    record.user
  end

  def decline?
    record.user
  end

  def destroy?
    record.user == user
  end
end
