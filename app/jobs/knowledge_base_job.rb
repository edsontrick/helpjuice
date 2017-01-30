class KnowledgeBaseJob < ApplicationJob
  queue_as :default

  def perform(*args)
    sleep 10
    knowledge = KnowledgeBase.create!(query: "FooBar")
  end
end
