class NotesController < ApplicationController
  def index
    @note = Note.new
  end
  
  def create
    @note = Note.new(note_params)
    @note.save
    redirect_to root_path
  end
end


private

def note_params
  params.require(:note).permit(:mouth)
end
