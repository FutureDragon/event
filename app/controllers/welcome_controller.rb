class WelcomeController < ApplicationController
  def index
    if current_user.present?
      if current_user.typ == 0
        current_user.add_role :musiker
      else
        current_user.add_role :veranstalter
      end
    end

  end

  def faq

  end
end
