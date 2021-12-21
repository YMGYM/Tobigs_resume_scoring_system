class ResumeController < ApplicationController
    before_action :authenticate_user!
    
    def index
        
    end
    
    def view
        
        # 1차때 사용
        if params[:id] != nil
            id = params[:id].to_i
        else 
            id = 1
        end
        
        
        
        # # 2차때 사용
        # if params[:id] != nil
        #     id = params[:id].to_i
        # else 
        #     id = 35 # 1등 아이디
        # end
        
        
        # 여기는 공통
        if (id > Resume.count) || (id <= 0)
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
        # 점수 업데이트 - 1차 이후에는 사용하지 않으므로 삭제
        scr = current_user.scores.where(resume_id: id)
        
        if scr.present?
            scr.update(user_id: current_user.id, resume_id: id, score1: params['score1'].to_f, score2: params['score2'].to_f, score3: params['score3'].to_f, score4: params['score4'].to_f, isFriend: params['isFriend'])
        else
            scr.create(user_id: current_user.id, resume_id: id, score1: params['score1'].to_f, score2: params['score2'].to_f, score3: params['score3'].to_f, score4: params['score4'].to_f, isFriend: params['isFriend'])
        end
        redirect_to '/view/' + (id+1).to_s
        
        # 인터뷰 대상자만 보기 - 2차때 사용
        # id = findInterview(id)
        # redirect_to '/view/' + (id).to_s
        
    end
    
    private
    def findInterview(id)
        tmp = [ 34,   3,  38, 172, 227,  27,  61, 161,  76, 275,  40, 203, 145,
       270, 224, 197, 146, 234, 210,  11, 246, 100,   0,  98,  74,  42,
       181,  96, 201, 140, 138,  43, 265,  60, 109, 149, 198, 250, 280,
        95,  89, 157, 152, 263, 287,  58, 189,  36, 133, 150,  19, 205,
        52,  39, 170, 107, 253, 166, 260, 116, 162, 164, 297, 199, 155,
       120, 129, 241, 182, 306,  45, 200, 112,   7, 141, 165, 245, 185,
       206, 214, 215, 193,  32, 160]
        pass = []
        tmp.each {|t| pass.append(t+1)}
        idx = pass.index(id)
        
        idx = pass.size() - 1 if idx == nil
        
        return pass[((idx) + 1) % pass.size() ]
    end
end
