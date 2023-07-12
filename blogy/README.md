# Blogy: a simple blog api server 

This is a learning project by building a simple blog api server. It's using JWT as an authentication method.
I'll be back to you after I finish my work

### Models

#### User:
- username
- email
- password
- description

#### Like:
- user
- content
- user and content relationship is unique

#### Comment:
- user
- text

#### Content:
- title
- text
- likes
- comments


### Controllers

#### User:
- User can sign-up with username/email and password
- User can login with username/email and password, then get jwt token
- User can update their profile

#### Content:
- User can write a content
- User can update a content
- User can delete a content
- User can get all contents from all users
- User can get all contents from a particular user

#### Like:
- User can like a content
- User can unlike a content
- User can get all likes for a content

#### Comment:
- User can write comments to a content
- User can delete their comments
- User can edit their comments
- User can get all comments to a content
