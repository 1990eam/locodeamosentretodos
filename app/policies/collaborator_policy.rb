class CollaboratorPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    record.role.project.user == user
  end

  def create?
    new?
  end

  def accept?
    create?
  end

  def destroy?
    true
  end
end
