require "rails_helper"

describe ApplicationHelper do
  describe "#page_title" do
    it "returns true" do
      helper.page_title.should be(true)
    end
  end
end