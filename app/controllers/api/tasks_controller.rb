class Api::TasksController < ApplicationController

 def index 
   @tasks = Task.all
    render 'index.json.jbuilder'
 end 

 def create 



   @task = Task.new(
       name: params['name'],
       user_id: 13
    )

   if @task.save
     render 'show.json.jbuilder'
   end


 end 

end
