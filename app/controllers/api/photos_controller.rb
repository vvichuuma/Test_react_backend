class Api::PhotosController < ApplicationController
 
  def create
    @photo = Photo.new(
        
        name: params[:name]

      )

    if @photo.save
      
      render json:{message:'Vish is a Computer Programmer'}
    end 

  end 



end
