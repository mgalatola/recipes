# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      
      can :my, Recipe
      if user.role.to_sym == :admin
        can :manage, Recipe
        can :manage, Ingredient
        can :manage, User
        cannot :destroy, User, role: User.roles[:admin]
      else
        can :manage, Recipe, :user_id => user.id
      end
    else
      can :index, Recipe
    end
  end
end
