require "application_system_test_case"

class RsvpsTest < ApplicationSystemTestCase
  setup do
    @rsvp = rsvps(:one)
  end

  test "visiting the index" do
    visit rsvps_url
    assert_selector "h1", text: "Rsvps"
  end

  test "should create rsvp" do
    visit rsvps_url
    click_on "New rsvp"

    fill_in "Email", with: @rsvp.email
    fill_in "Event", with: @rsvp.event_id
    fill_in "Name", with: @rsvp.name
    click_on "Create Rsvp"

    assert_text "Rsvp was successfully created"
    click_on "Back"
  end

  test "should update Rsvp" do
    visit rsvp_url(@rsvp)
    click_on "Edit this rsvp", match: :first

    fill_in "Email", with: @rsvp.email
    fill_in "Event", with: @rsvp.event_id
    fill_in "Name", with: @rsvp.name
    click_on "Update Rsvp"

    assert_text "Rsvp was successfully updated"
    click_on "Back"
  end

  test "should destroy Rsvp" do
    visit rsvp_url(@rsvp)
    click_on "Destroy this rsvp", match: :first

    assert_text "Rsvp was successfully destroyed"
  end

  test "should create rsvp" do
    visit event_url(@event)

    fill_in "Full Name", with: 'Test User'
    fill_in "Email", with: 'test@example.com'
    click_on 'RSVP'

    assert_text 'Test User (test@example.com)'
  end

  test "should create rsvp and clear form" do
    visit event_url(@event)
  
    fill_in "Full Name", with: 'Test User'
    fill_in "Email", with: 'test@example.com'
    click_on 'RSVP'
  
    assert_text 'Test User (test@example.com)'
  
    # Check that the form fields are cleared
    assert_field 'Full Name', with: ''
    assert_field 'Email', with: ''
  end
end
