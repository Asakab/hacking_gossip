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
  	 
  end


  def edit
  	
  end

  def destroy
 @gossip = Gossip.find(params[:id]).delete
redirect_to root_path
end

end
