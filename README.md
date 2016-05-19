## users table
- mail string
- password string
- name string
- member strig
- profile string
- works string
- avatar string

## posts table
- title string
- user_id references
- catch_cory string
- concept string

## images table
- status integer
- image string
- post_id references

## likes table
- user_id references
- post_id references

## comments table
- user_id references
- post_id references

## association
- user has_many posts
- user has_many comments
- user has_many likes
- image belongs_to post
- post has_many images
- post has_many likes
- post has_many comments
- comment belongs_to post
- comment belongs_to users
- like belongs_to user
- like belongs_to post