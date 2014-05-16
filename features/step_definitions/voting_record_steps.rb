Given(/^I am on the home page$/) do
  visit '/'
end

When(/^I enter my zip code$/) do
  fill_in 'Zip Code', with: '60616'
  click_on 'Search'
end

Then(/^I see the name of my congressman$/) do
  expect(page).to have_content "Danny K. Davis"
end

Then(/^I see the voting record of my congressman$/) do
  pending
  expect(page).to have_content "the Committee on Education and the Workforce from consideration of the bill"
end
