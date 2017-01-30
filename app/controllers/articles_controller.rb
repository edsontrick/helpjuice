class ArticlesController < ApplicationController

  def index
    @knowledge_base = KnowledgeBase.all.group_by(&:query).map{|key,val| {key => val.count}}
  end

  def search
    search = params[:search]
    knowledge_base = KnowledgeBase.new
    knowledge_base.query = search
    knowledge_base.save
  end

end
