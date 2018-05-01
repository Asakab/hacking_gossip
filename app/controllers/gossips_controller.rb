class GossipsController < ApplicationController
  def index
  end

  def new
  	@gossip = Gossip.new
  	
  	
  end

  def create
  	@gossip = Gossip.new(anonymous_author: params[:anonymous_author], content: params[:content])
     
      @gossip.save 
       # redirect_to post_gossips_path(@gossip.id)
     
 end
    



  def show
  	# @gossip = Gossip.find(params[:id])
  end
end
