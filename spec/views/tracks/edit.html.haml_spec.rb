require 'rails_helper'

RSpec.describe "tracks/edit", type: :view do
  before(:each) do
    @track = assign(:track, Track.create!(
      :number => 1,
      :album => nil,
      :song => nil,
      :description => "MyString"
    ))
  end

  it "renders the edit track form" do
    render

    assert_select "form[action=?][method=?]", track_path(@track), "post" do

      assert_select "input[name=?]", "track[number]"

      assert_select "input[name=?]", "track[album_id]"

      assert_select "input[name=?]", "track[song_id]"

      assert_select "input[name=?]", "track[description]"
    end
  end
end
