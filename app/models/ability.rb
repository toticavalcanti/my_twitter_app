class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Tweet
    can :read, User
    return unless user
    can :manage, Tweet, user_id: user.id
    can :manage, User,  id: user.id
  end
end