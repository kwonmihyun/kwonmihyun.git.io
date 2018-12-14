class MessageController < ApplicationController
    
    def new
        @message = Message.new
    end
    
    def create
        @message = Message.new message_params
        
        if @message.valid?
            MessageMailer.contact(@message).deliver_now
            redirect_to message_clear_path
            flash[:notice] = "메일이 전송되었습니다!"
        else
            flash[:notice] = "메일 전송에 실패하였습니다."
            render :new
        end
    end
    
    def clear
    end
    
    private
    
    def message_params
        params.require(:message).permit(:name, :title, :email, :message)
    end
end
