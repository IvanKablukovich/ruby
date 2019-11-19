FactoryBot.define do
  factory :task do
    assignee { "user" }
    description { "First task" }
    subject { "Ruby" }
  end
end
