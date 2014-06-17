class VocabulariesController < ApplicationController
  def index
    @vocabularies = Vocabulary.all
  end

  def create
	  #render text: params[:lesson].inspect    
	  @voca = Vocabulary.new(vocabulary_params)
	  @voca.save
	  redirect_to vocabularies_path
  end
  
  def new
  end
  
  private
  def vocabulary_params
	params.require(:vocabulary).permit(:name, :definition)
  end
end
