require 'rails_helper'

RSpec.describe "songs/edit", type: :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :name => "MyString",
      :description => "MyText",
      :lyricist => nil,
      :composer => nil,
      :arranger => nil
    ))
  end

  it "renders the edit song form" do
    render

    assert_select "form[action=?][method=?]", song_path(@song), "post" do

      assert_select "input[name=?]", "song[name]"

      assert_select "textarea[name=?]", "song[description]"

      assert_select "input[name=?]", "song[lyricist_id]"

      assert_select "input[name=?]", "song[composer_id]"

      assert_select "input[name=?]", "song[arranger_id]"
    end
  end
end
