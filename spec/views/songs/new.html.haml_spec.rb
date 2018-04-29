require 'rails_helper'

RSpec.describe "songs/new", type: :view do
  before(:each) do
    assign(:song, Song.new(
      :name => "MyString",
      :description => "MyText",
      :lyricist => nil,
      :composer => nil,
      :arranger => nil
    ))
  end

  it "renders new song form" do
    render

    assert_select "form[action=?][method=?]", songs_path, "post" do

      assert_select "input[name=?]", "song[name]"

      assert_select "textarea[name=?]", "song[description]"

      assert_select "input[name=?]", "song[lyricist_id]"

      assert_select "input[name=?]", "song[composer_id]"

      assert_select "input[name=?]", "song[arranger_id]"
    end
  end
end
