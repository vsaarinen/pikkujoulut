class FollowController < ApplicationController
  http_basic_authenticate_with name: "joulupukki", password: "tosisalainen"

  def index
    @teams = Team.all
  end
end
