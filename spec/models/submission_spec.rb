require 'spec_helper'

describe Submission do
  describe "validations" do
    it { should validate_presence_of(:link)}
    it { should validate_presence_of(:description)}
    it{ should validate_presence_of(:user_id)}
  end
end
