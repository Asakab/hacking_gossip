class GossipsController < ApplicationController
  def index
  end

  def new
  	@gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new
  end 
 

  def show
  end
end
