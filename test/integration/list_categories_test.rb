require "test_helper"

class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category_1 = Category.create(name: "Sports")
    @category_2 = Category.create(name: "Travel")
  end


  test "should now categories list" do
    get '/categories'
    assert_select "a[href=?]", category_path(@category_1), text: @category_1.name
    assert_select "a[href=?]", category_path(@category_2), text: @category_2.name
  end
end
