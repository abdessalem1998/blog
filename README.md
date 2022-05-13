![](https://img.shields.io/badge/Microverse-blueviolet)

## Project requirements

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/sneak_peek.md)

### Phase 1 - setup and controllers

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/Setup_Controllers_project.md)

### Phase 2 - controllers specs

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/controller_specs_project.md)

### Phase 3 - creating data model

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/creating_data_model_project.md)

### Phase 4 - processing data in models

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/Processing_data_model_project.md)

### Phase 5 - views

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/Views_project.md)

### Phase 6 - add forms

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/projects/forms_project.md)

### Phase 7 - validations, model specs, and n+1 problems

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/blog_app_validations_model_spec_n+1.md)

### Phase 8 - add devise

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/blog_app_devise.md)

### Phase 9 - add authorization rules

The project requirements can be viewed [here](https://github.com/microverseinc/curriculum-rails/blob/main/blog-app/blog_app_add_authorization.md)

## Built With

- Major languages: Ruby
- Framework: [Rails](https://rubyonrails.org/)
To get a local copy up and running follow these simple example steps.

## Usage

To get a local copy up and running follow these simple example steps.

1. clone the repository to you machine using your terminal:
   `git clone https://github.com/abdessalem1998/blog.git`
2. Install the gems:
   `bundle install`
3. Setup the development and the test databases:
   `rails db:setup`
4. Seed the test database:
   `rails db:seed RAILS_ENV=test`
5. To run the server use:
   `rails s`
   To run the tests use:
   `rspec`

## API documentation

This is the documentation of the Blog App API service we created for this project.
### **Base URL**

If your are running this project from your local machine Base URL is 

[http://localhost:3000](http://localhost:3000)

### **Endpoints**

**/api/posts**

Allowed actions:

- GET all posts of the user

Mandatory parameters for GET action:

- user_id: id of the user

Parameters example for GET action (sent in the body of the request in JSON format):

```
{ 
  "user_id": 1 
}
```

Return value: list of posts, Example Response:

```
[
  {
    "id": 9,
    "title": "my title",
    "text": "text",
    "comments_counter": 1,
    "likes_counter": 2,
    "created_at": "2022-04-06T10:25:48.933Z",
    "updated_at": "2022-04-06T10:25:48.933Z",
    "author_id": 7
  },
  {
    "id": 10,
    "title": "tite",
    "text": "text2",
    "comments_counter": 0,
    "likes_counter": 2,
    "created_at": "2022-04-06T10:25:59.684Z",
    "updated_at": "2022-04-06T10:25:59.684Z",
    "author_id": 7
  }
]
```

**/api/login**

Allowed actions:

- POST logins the user

Mandatory parameters for POST action:

- email: email of the user
- password: password of the user

Parameters example for POST action (sent in the body of the request in JSON format):

```
{ 
  "email": "test@example.com",
  "password": "password" 
}
```

Return value: unique authentication token. Example Response:

```
{
  "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NTAwNDY4ODR9.yKAPdF-5gZpiyqEfVk0YU05Q6hqLKCQnb1qBQxs7Xcs"
}
```

Token should be passed in the Headers with the Authorization key

**/api/comments**

Allowed actions:

- POST adds a new comment

Mandatory parameters for POST action:

- post_id: id of the post the user comments to
- text: your comment text

Parameters example for POST action (sent in the body of the request in JSON format):

```
{ 
  "post_id:": 1,
  "text": "my first comment" 
}
```
Return value: added comment. Example Response :

``` 
{
  "id": 8,
  "text": "my first comment",
  "created_at": "2022-04-08T18:50:03.699Z",
  "updated_at": "2022-04-08T18:50:03.699Z",
  "post_id": 9,
  "author_id": 7
}
```

**/api/comments**

Allowed actions:

- GET gets all the comments

Mandatory parameters for GET action:

- post_id: id of the post the user comments to
- user_id: id of the user

Parameters example for GET action (sent in the body of the request in JSON format):

```
{ 
  "post_id:": 1,
  "user_id": 2 
}
```
Return value: list of comments. Example Response :

``` 
[
  {
    "id": 7,
    "text": "my first comment",
    "created_at": "2022-04-08T18:23:16.223Z",
    "updated_at": "2022-04-08T18:23:16.223Z",
    "post_id": 9,
    "author_id": 7
  },
  {
    "id": 8,
    "text": "my first comment",
    "created_at": "2022-04-08T18:50:03.699Z",
    "updated_at": "2022-04-08T18:50:03.699Z",
    "post_id": 9,
    "author_id": 7
  }
]
```

## Author

👤 **Houfaf Abdessalem**

- GitHub: [@Houfaf Abdessalem](https://github.com/abdessalem1998)
- Twitter: [@Houfaf Abdessalem](https://twitter.com/HAbdssalem)
- LInkedIn: [@Houfaf Abdessalem](https://www.linkedin.com/in/houfafabdessalem/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!
