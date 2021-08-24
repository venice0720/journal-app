require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should go to /categories path" do
    get categories_path
  
    assert_response :success
    end
    test "should go to /categories/new path" do 
      get categories_new_path
      assert_response :success
    end
    test "should redirect to /categories path after category create" do 
      post category_create_path params: {category: 
                                       {title: 'Testingg',
                                       description: 'Tester'
                                       
                                       }}
       assert_response :redirect
   
     
     end



end
