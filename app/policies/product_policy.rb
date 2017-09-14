class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end  

  def new?
    user
  end  

  def create?
    user
  end  

  def destroy?
    user
  end
end
