require "rails_helper"

RSpec.describe ProjectsHelper, :type => :helper do
  describe "#link_to_widget" do
    it "links to a widget using its name" do
      widget = Widget.create!(:name => "This Widget")
      expect(helper.link_to_widget(widget)).to include("This Widget")
      expect(helper.link_to_widget(widget)).to include(widget_path(widget))
    end
  end
end