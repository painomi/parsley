require 'rails_helper'

RSpec.describe "tracks/index", type: :view do
  before(:each) do
    assign(:tracks, [
      Track.create!(
        :number => 2,
        :album => nil,
        :song => nil,
        :description => "Description"
      ),
      Track.create!(
        :number => 2,
        :album => nil,
        :song => nil,
        :description => "Description"
      )
    ])
  end

  it "renders a list of tracks" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
