require 'spec_helper'

describe Performer do

  let(:user) { FactoryGirl.create(:user) }
  before { @performer = user.performers.build(name: "example band", description: "an example") }

  subject { @performer }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:user) }
  its(:user) { should == user }

  it { should be_valid }
    
  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Performer.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end
  end

  describe "when user_id is not present" do
    before { @performer.user_id = nil }
    it { should_not be_valid }
  end
end
