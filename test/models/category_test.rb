require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "Should not save Category without title" do 
    category = Category.new
    category.description = 'Testing test'
  
   assert_not category.save, "Saved the User without a title"
   end
end
