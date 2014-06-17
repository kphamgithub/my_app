class WelcomeController < ApplicationController
  def index
     if current_user
	 @my_lesson = Lesson.new(name: "first lesson",content: "my content")
	 #render text: @my_lesson.name
	 end
  end
end
