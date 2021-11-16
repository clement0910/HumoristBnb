class HumoristPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def index?
    true
  end

  def update?
    record.owner == user
  end

  def create?
    true
  end

  def destroy?
    record.owner == user
  end
end
