class PagesController < ApplicationController
  def home
    @u = User.all
    @c = Cat.all
    @t = Todo.all
  end
end
