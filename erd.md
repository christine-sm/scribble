#Scribble ERD

* Post (one post has many comments; comments dependent on posts)
  * title
  * updated_at (include user and time)
  * body_post
  * tags

* Comment (one post has many comments; comments dependent on posts)
  * updated_at (include user and time)
  * body_comment
  * post_id
