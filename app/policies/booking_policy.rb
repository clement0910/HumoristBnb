class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(client_id: user.id)
    end
  end

  def create?
    true
  end

  def destroy?
    record.client == user
  end

  def index?
    true
  end
end
