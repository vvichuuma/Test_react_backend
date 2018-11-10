class Api::TasksController < ApplicationController

 def index 
   @tasks = Task.all
    render 'index.json.jbuilder'
 end 

 def create 

   @task = Task.new(
       name: params['name']
    )

   if @task.save
     render json:{message:'task has been added'}
   end


 end 

end
