class KnowledgebasesController < ApplicationController

  def clear
    KnowledgeBase.delete_all
    redirect_to root_path
  end

  def clear_finding_by_query
    searchterm = params[:query]
    KnowledgeBase.any_of({ :query => /.*#{searchterm}.*/ }).delete_all
    redirect_to root_path
  end

end
