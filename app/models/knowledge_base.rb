class KnowledgeBase
  include Mongoid::Document

  field :query, type: String
end
