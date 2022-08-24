1 == rails new app

2 == rails g model Author first_name:string last_name:string date_of_birth:date
     rails db:migrate

3 == rails g model Book title:string
     rails db:migrate

4 == rails g model Join author:references book:references
     rails db:migrate

5 == rails g controller home index
     set root routes

6 == rails g controller books
     index action
     rails g controller authors
     index action