require 'rails_helper'

RSpec.describe 'Dish show page' do
  before :each do
    @chef = Chef.create(name: 'Chef 1')
    @dish1 = @chef.dishes.create(name: 'Dish 1', description: 'dish description')
    @dish2 = @chef.dishes.create(name: 'Dish 2', description: 'dish description')
    @ingredient1 = Ingredient.create(name: 'Chicken', calories: 100)
    @ingredient2 = Ingredient.create(name: 'Rice', calories: 200)
    @ingredient3 = Ingredient.create(name: 'Beef', calories: 150)
    @dish_ingredient1 = DishIngredient.create(dish_id: @dish1.id, ingredient_id: @ingredient1.id)
    @dish_ingredient2 = DishIngredient.create(dish_id: @dish1.id, ingredient_id: @ingredient2.id)
    @dish_ingredient3 = DishIngredient.create(dish_id: @dish2.id, ingredient_id: @ingredient3.id)
  end

  describe 'As a visitor' do
    describe "When I visit a dish's show page" do
      it "I see the dish’s name and description" do
        visit dish_path(@dish1)

        expect(current_path).to eq ("/dishes/#{@dish1.id}")
      end
      it "And I see a list of ingredients for that dish" do
      end
      it "And I see the chef's name" do
      end
      it "And I see the total calorie count for that dish." do
      end
    end
  end
end