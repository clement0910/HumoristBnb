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
    record.user == user  # Only restaurant creator can update it
  end

  def new?
    record.user == user  # Only restaurant creator can update it
  end
end
