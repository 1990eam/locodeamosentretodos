class RolePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    record.project.nil? || record.project.user == user
  end

  def create?
    new?
  end

  def edit?
    record.project.user == user
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
