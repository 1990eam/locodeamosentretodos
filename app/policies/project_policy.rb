class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    record.user == user || record.collaborators.any? { |collaborator| collaborator.user == user }
  end

  def update?
    user_owner?
  end

  def my_projects?
    true
  end

  def destroy?
    user_owner?
  end

  private

  def user_owner?
    record.user == user
  end
end
