class TaskPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end
  end


  def create?
    user.admin?
  end

  def new?
    user.admin?
  end

end
