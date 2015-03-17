class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
  end

  def show
    @chapter = Chapter.find(params[:id])
  end

  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      flash[:notice] = @chapter.title + " added!"
      redirect_to chapters_path
    else
      render :new
    end
   end

  def edit
    @chapter = Chapter.find(params[:id])
  end

  def update
    @chapter = Chapter.find(params[:id])
    if @chapter.update(chapter_params)
      flash[:notice] = @chapter.title + " edited!"
      redirect_to chapters_path
    else
      render :edit
    end
  end

  def destroy
    @chapter = Chapter.find(params[:id])
    destroyed_chapter_title = @chapter.title
    destroyed_chapter_number = @chapter.number
    @chapter.destroy
    flash[:notice] = @chapter.title + " deleted!"
    redirect_to chapters_path
  end

private
  def chapter_params
    params.require(:chapter).permit(:title, :body, :number)
  end
end
