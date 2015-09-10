class Ability
  include CanCan::Ability

  def initialize(user)
    if user.blank?
      cannot :manage, :all
      basic_read_only
    elsif user.user? 
      cannot :manage, :all
      can :read, :all
      can :create, Bug
      can :destroy, Bug do |bug|
        bug.user_id == user.id
      end

    elsif user.developer?
      can :manage, :all
      
    end
 

  end

  private

  def basic_read_only 
    can :read, Bug
    can :read, Comment
  end
end
