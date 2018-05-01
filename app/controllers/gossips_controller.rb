class GossipsController < ApplicationController
  def index
  end

  def new
  	@gossip = Gossip.new
  	
  	
  end

  def create
  	@gossip = Gossip.create(anonymous_author: params[:anonymous_author], content: params[:content])
       @gossip.save 
        #redirect_to gossips_path(@gossip.id)
     end
    

   # @gossip.anonymous_author = params[:name]
    #@gossip.content = params[:content]
    #@gossip.save
    #redirect_to ?



  def show
  end
end
