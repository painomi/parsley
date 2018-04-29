require 'rails_helper'

RSpec.describe "albums/edit", type: :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :name => "MyString",
      :description => "MyText",
      :artist => nil,
      :media_type => 1,
      :release_type => 1,
      :production_type => 1
    ))
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(@album), "post" do

      assert_select "input[name=?]", "album[name]"

      assert_select "textarea[name=?]", "album[description]"

      assert_select "input[name=?]", "album[artist_id]"

      assert_select "input[name=?]", "album[media_type]"

      assert_select "input[name=?]", "album[release_type]"

      assert_select "input[name=?]", "album[production_type]"
    end
  end
end
