## users table
### association
- user has_many prototypes
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

## prototypes table
### association
- prototype has_many images
- prototype has_many likes
- prototype has_many comments

### column
- title string
- user_id references
- catch_copy string
- concept string
- created_at timestamp

## images table
### association
- image belongs_to prototype

### column
- status integer
- image string
- prototype_id references

## likes table
### association
- like belongs_to user
- like belongs_to prototype

### column
- user_id references
- prototype_id references

## comments table
### association
- comment belongs_to prototype
- comment belongs_to user

### column
- text text
- user_id references
- prototype_id references