class NotesController < ApplicationController

  def create
    @note = notes.new(note_params)
    respond_to do |format|
      if @note.save
        format.html { redirect_to tasks_path, norice: 'Note was successfully created.' }
        format.json
      else
        format.html { render :notes }
        format.json
      end
    end
  end

  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { render :edit }
        format.json
      else
        format.html { render :edit }
        format.json
      end
    end
  end

  private

  def note_params
    params.require(:note).permit(:note).merge(task_id: params[:task_id])
  end

end
