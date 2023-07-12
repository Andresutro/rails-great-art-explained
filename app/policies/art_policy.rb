class ArtPolicy < ApplicationPolicy

  def index?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    user == record.user
  end
end
