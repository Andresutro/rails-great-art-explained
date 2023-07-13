class DonationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: user.id)
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.present?
  end


end
