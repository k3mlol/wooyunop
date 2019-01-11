class BugsController < ApplicationController
  def index
    @test = params[:q]
    type = params[:type]
    id = params[:q][:id]
    if type == "id"
      len = Bug.ransack(wybug_id_cont: id)
      @length = len.result.to_a.length
      @q = Bug.paginate(page: params[:page], per_page: 10).ransack(wybug_id_cont: id)
      @result = @q.result.to_a
    end
    if type == "author"
      len = Bug.ransack(wybug_author_cont: id)
      @length = len.result.to_a.length
      @q = Bug.paginate(page: params[:page], per_page: 10).ransack(wybug_author_cont: id)
      @result = @q.result.to_a
      @len = @q.result.to_a.length
    end
    if type == "title"
      len = Bug.ransack(wybug_title_cont: id)
      @length = len.result.to_a.length
      @q = Bug.paginate(page: params[:page], per_page: 10).ransack(wybug_title_cont: id)
      @result = @q.result.to_a
      @len = @q.result.to_a.length
    end
    if type == "vulns"
      len = Bug.ransack(wybug_type_cont: id)
      @length = len.result.to_a.length
      @q = Bug.paginate(page: params[:page], per_page: 10).ransack(wybug_type_cont: id)
      @result = @q.result.to_a
      @len = @q.result.to_a.length
    end
    if type == "company"
      len = Bug.ransack(wybug_corp_cont: id)
      @length = len.result.to_a.length
      @q = Bug.paginate(page: params[:page], per_page: 10).ransack(wybug_corp_cont: id)
      @result = @q.result.to_a
      @len = @q.result.to_a.length
    end

  end
end
