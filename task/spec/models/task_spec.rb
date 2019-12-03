require 'rails_helper'

RSpec.describe Task, type: :model do

  let(:task) { build(:task) }
  let(:subject) { build(:task) }
  let(:description) { build(:task) }
  let(:assignee) { build(:task) }
  let(:user_id) { build(:task) }

  describe "Model validations" do
    it { expect(subject).to validate_presence_of(:subject) }
    it { expect(description).to validate_presence_of(:description) }
    it { expect(assignee).to validate_presence_of(:assignee) }
  end

  describe "Model associations" do
    it { expect(task).to belong_to(:user) }
    it { expect(task).to have_many(:comments)}
  end
end
