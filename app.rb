require 'sinatra'

# Set the port and public folder for static files
set :port, 4568
set :public_folder, 'public'

# Root route - Home page
get '/' do
  erb :index
end

# Route for "About Us"
get '/about' do
  erb :about
end

# Route for "Contact"
get '/contact' do
  erb :contact
end

# Route for "Menu"
get '/menu' do
  @dishes = [
    { name: 'Dish 1', description: 'Delicious starter made with fresh ingredients.', image: '/images/dish1.jpg' },
    { name: 'Dish 2', description: 'A mouthwatering main course with a fusion of flavors.', image: '/images/dish2.jpg' },
    { name: 'Dish 3', description: 'A sweet treat to end your meal.', image: '/images/dish3.jpg' }
  ]
  erb :menu
end
get '/order' do
  dish_id = params[:dish]
  # Logic to process the order based on dish_id
  "Thank you for ordering Dish #{dish_id}!"
end
