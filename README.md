I started this project to become familiar with integrating the [Foundation front-end framework](http://foundation.zurb.com/) with Rails applications.

Pardon the aesthetics of the project, this exercise is not focused on design and CSS, rather to practice utilising several front & back-end technologies together in one project.

## References
* [Launch School's Zurb & Rails tutorial series](https://launchschool.com/blog/rails-and-foundation-part-1)

## Future plans
To better familiarize myself with AJAX, dependent destroys, and soft deletes. In the future, I hope to implement the following features.

* Add optional sub-lists fields to the to-do lists which automatically updates the database using AJAX.
* Sub-lists are dependent on lists, and subsequently destroyed along with any deleted lists.
* Implement soft delete so users can restore accidentally deleted todo notes using the [paranoia gem](https://github.com/rubysherpas/paranoia).
* Simple search form in the home page. Perhaps adding autocomplete suggestions later on.
