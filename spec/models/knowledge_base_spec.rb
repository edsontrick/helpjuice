require 'rails_helper'

RSpec.describe KnowledgeBase, type: :model do
  it "create 1000 KnowledgeBase" do
    10000.times do
      KnowledgeBase.create!(query: "Andy")
    end
    puts "Finished without sidekiq"
  end

  it "create 1000 KnowledgeBase with sidekiq" do
    10000.times do
      KnowledgeBaseJob.perform_later
    end
    puts "Finished with sidekiq"
  end
end
