## users table
### association
- user has_many posts
- user has_many comments
- user has_many likes

### column
- mail string
- password string
- name string
- member strig
- profile string
- works string
- avatar string

## posts table
### association
- post has_many images
- post has_many likes
- post has_many comments

### column
- title string
- user_id references
- catch_cory string
- concept string

## images table
### association
- image belongs_to post

### column
- status integer
- image string
- post_id references

## likes table
### association
- like belongs_to user
- like belongs_to post

### column
- user_id references
- post_id references

## comments table
### association
- comment belongs_to post
- comment belongs_to users

### column
- user_id references
- post_id references