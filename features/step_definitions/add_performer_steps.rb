Given /^a user visits the add performer page$/ do
  visit new_performer_path
end

When /^he submits invalid performer information$/ do
  click_button "List"
end

When /^the user submits valid performer information$/ do
  @performer = Performer.create(name: "Example Band", description: "A new band")
  fill_in "Name",    with: @performer.name
  fill_in "Description", with: @performer.description 
  click_button "List"
end

Then /^he should see the performer page$/ do
  page.should have_selector('title', text: "View performer")
end

Then /^he should see the sign in page$/ do
  page.should have_selector('title', text: "Sign in")
end

Then /^he should see an edit link$/ do
  page.should have_link('Edit listing', href: edit_performer_path)
end
