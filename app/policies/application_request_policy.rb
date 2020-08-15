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
    true
  end

  def accept?
    record.user
  end

  def decline?
    record.user
  end
end
