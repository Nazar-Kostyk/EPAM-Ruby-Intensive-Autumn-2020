books = [
  {
    name:   'Learning ruby, mysql and JavaScript',
    author: 'Robin Snow',
    price:  30,
    tags:   %w[ruby javascript mysql]
  },
  {
    name:   'Ruby for the Web: Visual QuickStart Guide',
    author: 'Larry Snow',
    price:  25,
    tags:   ['ruby']
  },
  {
    name:   'Ruby and MySqL for Dynamic Web Sites',
    author: 'Larry Snow',
    price:  14.39,
    tags:   %w[ruby mysql]

  },
  {
    name:   'Modern Ruby: New Features and Good Practices',
    author: 'Josh Snow',
    price:  24,
    tags:   ['ruby']
  },
  {
    name:   'JavaScript and JQuery: Interactive Front-End Web Development',
    author: 'Jon Snow',
    price:  20,
    tags:   %w[javascript jquery]
  },
  {
    name:   'Miss Peregrine Home for Peculiar Children',
    author: 'Ransom Snow',
    price:  8.18
  }
]

# sort books by price
puts books.sort_by { |book| book[:price] }

# select books which have 'ruby' tag
puts books.select { |book| book[:tags].include?('ruby') if book[:tags] }
