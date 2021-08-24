require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest
    test 'should go to new category form and able to create category' do
     get categories_new_path
     assert_response :success
     assert_difference 'Category.count',1 do 
        post category_create_path, params: {category: {title: 'Tester', description:'Tester description'
         }}
     assert_response :redirect
end
     follow_redirect!
     assert_response :success
end
end