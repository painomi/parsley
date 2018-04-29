require 'rails_helper'

RSpec.describe "tracks/new", type: :view do
  before(:each) do
    assign(:track, Track.new(
      :number => 1,
      :album => nil,
      :song => nil,
      :description => "MyString"
    ))
  end

  it "renders new track form" do
    render

    assert_select "form[action=?][method=?]", tracks_path, "post" do

      assert_select "input[name=?]", "track[number]"

      assert_select "input[name=?]", "track[album_id]"

      assert_select "input[name=?]", "track[song_id]"

      assert_select "input[name=?]", "track[description]"
    end
  end
end
