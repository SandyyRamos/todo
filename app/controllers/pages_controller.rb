class PagesController < ApplicationController
  def home
    @tasks = Task.order(created_at: :desc)
  end
end
