# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name: "Sports")
  end

  test 'Category shoud be valid' do
    assert @category.valid?
  end

  test 'name should be present' do
    @category.name = " "
    assert_not @category.valid?
  end

  test 'name should be uniq' do
    @category.save
    @category2 = Category.new(name: "Sports")

    assert_not @category2.valid?
  end

  test 'name should not be too long' do
    @category.name = "A" * 25

    assert_not @category.valid?

  end

  test 'name should not be too short' do
    @category.name = "aa"

    assert_not @category.valid?
  end
end
