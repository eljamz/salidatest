### Developer Instructions

#### Objective
Implement a feature where a user can:
1. Submit a form to create a new RSVP.
2. Upon submission, update the list of the last 5 RSVPs.
3. Clear the form fields.
4. Use a Stimulus controller to show and hide a modal displaying the ID of the newly created RSVP.

#### Steps

1. **Clone the Repository and Set Up the Project:**
   ```bash
   git clone https://github.com/culov/rsvp_app.git
   cd rsvp_app
   bundle install
   rails db:setup
   rails s
   Visit http://localhost:3000/events/new and create a new event
   
2. **Event Show Page:**
   - Visit http://localhost:3001/events/1 - this is where the project will be completed.
   - We have a ul displaying the last 5 RSVPs, and a form to create new RSVP (unfinished).
     
3. **Form Submission:**
   - On form submission, create a new RSVP and update the list of last 5 RSVPs.
   - Clear the form fields.
   - Show a modal with the new RSVP's ID.

4. **Stimulus Controller:**
   - Implement a Stimulus controller to handle showing and hiding the modal. I already created modal_controller.js for this.

5. **Create a System Test:**
   - Write a system test to ensure that the RSVP creation works correctly (use spec/system/rsvp_system_spec.rb).
   - The test should check that the new RSVP is added to the list and the form fields are cleared after submission.
   - The test should also verify that the modal displays the new RSVP's ID.
   - 
**Notes:**
- Use Turbo Streams for updating the RSVP list and clearing the form.
- The Stimulus controller should handle displaying and hiding the modal.
- Use RSpec for testing and ensure the test covers the RSVP creation and form clearing functionalities.
- Turbo, Stimulus, Bootstrap, and Rspec have already been added to the project, there should be no need for additional libraries. 

#### Submission:
1. Commit your changes to a new branch.
2. Push the branch to the remote repository.
3. Open a pull request for review.

If you have any questions, please feel free to ask.
