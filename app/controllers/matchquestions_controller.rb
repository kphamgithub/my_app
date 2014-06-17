class MatchquestionsController < ApplicationController
  def index
     @matchquestions = Matchquestion.all
  end
  def new
  end
  def show
	 @matchquestion = Matchquestion.find(params[:id])
  end

  def create
      @matchquestion = Matchquestion.create({"name" => params["name"]})
      rows = []
	  row = nil
      params.each do |key,value|
		if key.include? "match"
		   row = Hash.new
		   row["match"] = value
		elsif key.include? "answer"
		   row["answer"] = value
		   rows.push(row)
		   row = nil
		end
	  end
	  #render text: params.inspect
	  #render text: rows.inspect
	  #@match = @matchquestion.matches.create()
	  rows.each do |r|
	     @matchquestion.matches.create(r)
	  end
	  #@matchquestion.save
	  #render text: rows.inspect
	  redirect_to matchquestions_path 
  end
 
  def destroy
	  #render text: params[:id].inspect
          matchquestion = Matchquestion.find(params[:id])
	  matchquestion.destroy
	  redirect_to matchquestions_path
  end
 
  
  private
  def matchquestion_params
	params.require(:matchquestion).permit(:name, :question) 
  end
end

