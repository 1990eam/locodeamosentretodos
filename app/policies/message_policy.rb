class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def chatroom?
    true
  end

  def create?
    true
  end
end
