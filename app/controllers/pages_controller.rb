class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    Artwork.last(10)

  end
end
