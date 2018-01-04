# README
Ejemplo de una API utilizando Graphql y siguiendo el tutorial de howtographql ( https://www.howtographql.com/graphql-ruby/0-introduction/ ).

## Installation

Install dependencies:

```
bundle install

rails db:create
rails db:migrate
rails db:seed
```

Starting the server:

```
rails server
```

Opening the application:

```
open http://localhost:3000/
```

**Ejemplos de comando en la colsola de grapqhl**

```

query{
  allLinks(first: 2, skip: 1){id}
}


query{
  allLinks(filter:{
    description_contains:"google",
  OR:{
    description_contains:"facebook"
  }} )
  {description url}
}



mutation{
  createLink(url:"" description:"url vacia"){id}
}


query{
  allLinks{
  	postedBy{
      name
      votes{
        link {
          id
        }
        user{
          name
        }
      }
    }
  }
}


query{
  allLinks{
    votes{
      id
      link{
        url
      }
      user{
        name
      }
    }
  }
}


mutation{
  createVote(
    linkId: "5" ){
      link{
        description
        url
      }
      user{
        email
        name
      }
    }
 
}

mutation{
  createLink(   
    url: "www.culturacuantica.com",
    description: "La pagina de tecnologia",
  )
    {
    id 
    description 
    url
    postedBy{
      id
      name
    }
    
  }
}



mutation{
  signinUser(
    email: {
      email: "gustavo.fabian.sandoval@gmail.com",
      password: "123456"
    }
  ){
    token
    user{
      id
      name
    }
  }
  
} 





mutation{
  createUser(
    name: "sandovalgus",
    authProvider:{
      email: {
        email: "gustavo.fabian.sandoval@gmail.com",
        password: "123456"
      }
    }
  )
  {
    id
    email
    name
  }
}


mutation{
  createLink(   
    url: "www.facebook.com",
    description: "La pagina del buscador de facebook",
  )
    {
    id 
    description 
    url
  }
}


query{
  allLinks{
    url
  }
}

```
