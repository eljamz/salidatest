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
2. **Event Show Page:**
   - Display the last 5 RSVPs as a list.
   - Include a form to create a new RSVP.

3. **Form Submission:**
   - On form submission, update the list of RSVPs.
   - Clear the form fields.
   - Use a Stimulus controller to show a modal with the new RSVP's ID.

4. **Stimulus Controller:**
   - Implement a Stimulus controller to handle showing and hiding the modal.

**Notes:**
- Use Turbo Streams for updating the RSVP list and clearing the form.
- The Stimulus controller should handle displaying and hiding the modal.

#### Submission:
1. Commit your changes to a new branch.
2. Push the branch to the remote repository.
3. Open a pull request for review.

If you have any questions, please feel free to ask.
