class HomeController < ApplicationController
  def index
    @c = Cat.all    
    @d = Dog.all
  end
end
