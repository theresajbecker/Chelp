README-for-Instructors: 

If you want to view the admin features under User Profile->Admin login as:
Email: Admin@Chelp.com
Password: ChelpAdmin

The uncompleted portions of the proposal and changes to our proposal:
We changed the views so that the filters are Region, Area of Impact, and Overhead. This is a modification on our original idea. 
Other features we decided to take away are the “add a favorite charities list” on the user profile page.
We decided not to have a page to ‘report a user’, however we completed an administration page. Other than these changes we followed our proposal. 

Test Coverage:
- Controller tests were generated by the rails scaffold generate commands
- Tests were not created for models which only inherited from ActiveRecord
- Tests of Note:

	/spec/requests/linkbar_spec.rb
		This was an integration test that was included to navigate to each view, check the text before and after logging in, and ensuring the correct text is displayed.

	/spec/views/layouts/application_spec.haml.rb
		This tests our partial view for the link bar logic whether a user is logged in or not

-----------------------------rake stats -----------------
+----------------------+-------+-------+---------+---------+-----+-------+
| Name                 | Lines |   LOC | Classes | Methods | M/C | LOC/M |
+----------------------+-------+-------+---------+---------+-----+-------+
| Controllers          |   447 |   302 |       8 |      51 |   6 |     3 |
| Helpers              |    30 |    26 |       0 |       3 |   0 |     6 |
| Models               |   188 |   155 |       6 |      11 |   1 |    12 |
| Mailers              |     0 |     0 |       0 |       0 |   0 |     0 |
| Javascripts          |    37 |     5 |       0 |       2 |   0 |     0 |
| Libraries            |     0 |     0 |       0 |       0 |   0 |     0 |
| Controller tests     |     0 |     0 |       0 |       0 |   0 |     0 |
| Helper tests         |     0 |     0 |       0 |       0 |   0 |     0 |
| Model tests          |     0 |     0 |       0 |       0 |   0 |     0 |
| Mailer tests         |     0 |     0 |       0 |       0 |   0 |     0 |
| Integration tests    |     0 |     0 |       0 |       0 |   0 |     0 |
| Controller specs     |   972 |   657 |       0 |       0 |   0 |     0 |
| Helper specs         |   105 |    28 |       0 |       0 |   0 |     0 |
| Model specs          |   135 |   101 |       0 |       0 |   0 |     0 |
| Request specs        |   211 |   149 |       0 |       0 |   0 |     0 |
| Routing specs        |   211 |   156 |       0 |       0 |   0 |     0 |
| View specs           |   527 |   421 |       0 |       0 |   0 |     0 |
+----------------------+-------+-------+---------+---------+-----+-------+
| Total                |  2863 |  2000 |      14 |      67 |   4 |    27 |
+----------------------+-------+-------+---------+---------+-----+-------+
  Code LOC: 488     Test LOC: 1512     Code to Test Ratio: 1:3.1


