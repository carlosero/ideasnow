class TagsController < ApplicationController
  def index
    @tags = Tag.where("name like ?", "%#{params[:q]}%")
    @tags.map!(&:attributes)
    if @tags.empty?
      @tags = [{id: params[:q], name: "Not found, add #{params[:q]}?"}]
    end
    respond_to do |format|
      format.json { render :json => @tags }
    end
  end
end
