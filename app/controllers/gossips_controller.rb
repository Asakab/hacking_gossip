class GossipsController < ApplicationController
  def index
  end

  def new
  	@gossip = Gossip.new
  	
  	
  end

  def create
    @gossip = Gossip.new(anonymous_author: params["anonymous_author"], content: params["content"])
   if @gossip.save 
     redidrect_to gossips_path

   # @gossip.anonymous_author = params[:name]
    #@gossip.content = params[:content]
    #@gossip.save
    #redirect_to ?

end
  end 
 

  def show
  end
end
