Given(/^that we have some tags$/) do
  @first_tag = Tag.create!(:name => "bar")
  @second_tag = Tag.create!(:name => "restaurant")
  @third_tag = Tag.create!(:name => "deli")
end

Given(/^that we have at least five shops and they have tags$/) do
  5.times do
    Shop.create!(
      name: "Mr O's Organic Emporium", 
      opening_hours: "monday-friday: 08:00-20:00, saturday: 10:00-18:00, sunday: closed", 
      email: "shop@shop.org", 
      phone: "020 4545 3333", 
      website: "www.mrorganic.com", 
      address_city: "London",
      address_street: Faker::Address.street_address,
      address_secondary: Faker::Address.secondary_address,
      address_building: Faker::Address.building_number,
      address_postcode: Faker::Address.postcode,
      address_state: Faker::Address.state,
      address_country: "United Kingdom",
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude,
      tags: [@first_tag, @second_tag, @third_tag]
    )
  end 
end

When(/^the user visits the homepage$/) do
  visit root_path
end

When(/^he signs in$/) do
  fill_in 'Email', :with => 'merchant@goodbuy.co.uk'
  fill_in 'Password', :with => 'password'
  click_button('Sign in')
end

Then(/^he should see the first five shops on the page$/) do
  expect(page).to have_content "Mr O's Organic Emporium"
  expect(page).to have_content 'London'
end

Then(/^he should also see the shops' tags$/) do
  expect(page).to have_content "restaurant" 
end
