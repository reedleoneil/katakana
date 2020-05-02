class WelcomeController < ApplicationController
  def index
    @words = Word.all.order(:word)
  end
end
