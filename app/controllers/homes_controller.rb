class HomesController < ApplicationController
  def top
    @posts = Micropost.all
  end
end
