require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "Should not save Category without title" do 
    category = Category.new
    category.description = 'Testing test'
  
   assert_not category.save, "Saved the User without a title"
   end
   test "Should not save Category without description" do 
    category = Category.new
    category.title = 'Testing description'
  
   assert_not category.save, "Saved the User without a Description"
   end
end
