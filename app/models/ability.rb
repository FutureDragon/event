class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      if user.has_role?(:admin)
        # Admins
        can :manage, :all

      end

      if user.typ == 0
        can :create, Music
      end

      if user.typ == 1
        can :create, Event
      end
    end
  else
    can :read, :all

  end




end
