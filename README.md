## users table
- mail string
- password string
- name string
- member strig
- profile string
- works string
- avatar string

## post table
- title string
- user_id preference
- catch_cory string
- concept string

## images table
- status integer
- image string
- post_id preference

## likes table
- user_id string
- post_id string

## contents table
- user_id string
- post_id string

## association
- users has_many post
- users has_many contents
- users has_many likes
- post belongs_to images
- post has_many likes
- post has_many contents
- contents belongs_to post
- contents belongs_to users
- likes belongs_to users
- likes belongs_to post