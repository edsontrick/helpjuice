class ArticlesController < ApplicationController

  def index
    @knowledge_base = KnowledgeBase.all.group_by(&:query).map{|key,val| {key => val.count}}
  end

  def search
    KnowledgeBase.create!(:query => params[:search_field])
    redirect_to root_path
  end

end
