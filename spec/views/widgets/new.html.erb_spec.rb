require 'rails_helper'

RSpec.describe "widgets/new", :type => :view do
  before(:each) do
    # assign(:widget, FactoryBot.create(:widget, name:'MyString', size:1))
    assign(:widget, Widget.new(
      :name => "MyString",
      # :color => "MyString",
      :size => 1
    ))
  end

  it "renders new widget form" do
    render

    assert_select "form[action=?][method=?]", widgets_path, "post" do

      assert_select "input#widget_name[name=?]", "widget[name]"

      # assert_select "input#widget_color[name=?]", "widget[color]"

      assert_select "input#widget_size[name=?]", "widget[size]"
    end
  end
end
