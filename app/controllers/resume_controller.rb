class ResumeController < ApplicationController
    before_action :authenticate_user!
    
    def index
        
    end
    
    def view
        
        if params[:id] != nil
            id = params[:id].to_i
        else 
            id = 1
        end
        
        if (id >= Resume.count) || (id <= 0)
            id = 1
        end
        
        @res = Resume.find(id)
        
        if Score.where(user_id: current_user.id, resume_id: id).present?
            @scr = Score.where(user_id: current_user.id, resume_id: id).first
        else
            @scr = Score.new
        end
        
    end
    
    def move
        id = params["id"].to_i
        
        if Score.where(user_id: current_user.id, resume_id: id).present?
            Score.update(user_id: current_user.id, resume_id: id, score1: params['score1'].to_f, score2: params['score2'].to_f, score3: params['score3'].to_f, score4: params['score4'].to_f)
        else
            Score.create(user_id: current_user.id, resume_id: id, score1: params['score1'].to_f, score2: params['score2'].to_f, score3: params['score3'].to_f, score4: params['score4'].to_f)
           
        end
        
        redirect_to '/view/' + (id+1).to_s
    end
    
end
