# README for Solo project week 3 Ruby on Rails Epicodus

# Refactored on 7/14/17 by Zach Beecher.
Project

Based on the freelance work you've done, you've been hired at a local dev agency! For your first project, you'll dive right into the code base for an e-commerce site that's already in process. The developer working on the site quit abruptly and moved to Bali, leaving a terrible README behind. You'll need to add AJAX and refactor the project. This week, your goal is to do the best refactor. See what you can do to clean up the code and improve it further. All improvements should be included in your README and your commit history.

Note that your code review will need to be resubmitted and the code will not be reviewed if the README and commit history aren't clear and thorough. Treat this as an actual work situation... the senior dev is too busy to deal with poorly documented commit histories and READMEs.

Refactoring an E-Commerce Site
The existing codebase you'll work with is available here on GitHub.

Here's how you'll work off of this existing code:

Fork the repository into your own GitHub account (Using the Fork button in the upper-right corner of the GitHub repo).
Clone the forked repository from your GitHub account to your local machine.
Push commits to your account's forked repo.
Once complete, submit your fork of the repo through Epicenter.
Please do not send pull requests to the upstream starter repository.
Before you do any other refactoring, you'll need to add the following AJAX to the site. Make sure to commit after each new feature.

Users can add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.
Users can click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.
Users can remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.
Once you are finished adding AJAX, continue to refactor the site. Do at least 6 of the following items. Commit after each completed objective and also mention them in your README. Make sure you test where appropriate.

Ensure that users can't order a negative number of items.
Add flash messages for signing up, signing in and signing out.
Add product update and delete functionality for admins.
Add admin flash messages for adding, updating and deleting products.
Add Paperclip for product image upload.
Allow other than whole dollar amounts for admin product creation (for instance, 3.99).
Add product validations.
Add Stripe so users can pay when finalizing orders.
Add password validations to ensure a user's password is sufficiently complex.
Add admin links to navbar so admins can easily add, update and delete products.
Fix the row height for products, which can quickly become uneven.
Add integration testing for AJAX functionality.
Add further AJAX functionality where it might be useful.
#The following changes were made:

* AJAX: If a product is added to the cart on the home page, an AJAX request is sent to update the # of items in the cart without reloading the page for a better user experience overall.

* AJAX: On the Homepage, users may click on a product to show or hide its details.

* AJAX: On shopping cart screen, delete items without reloading the page when an item is removed.

* Allow only positive integers in the add cart form and up to a max of 5000 items.

* Add flash messages for user when they sign up, sign out, and sign in.

* Add admin support to add new products.

* Add admin flash messages for adding new product, updating, and edit and add CRUD functionality core. 



E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

#To set up:
* `rake db:create db:migrate db:seed`
