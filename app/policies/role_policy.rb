class RolePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    # record.project.user == user
    true
  end

  def create?
    new?
  end
end
