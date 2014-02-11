require 'spec_helper'

describe Comment do
  describe "validations" do
    it { should validate_presence_of(:user_id)}
    it { should validate_presence_of(:submission_id)}
    it { should validate_presence_of(:body)}
  end
end
