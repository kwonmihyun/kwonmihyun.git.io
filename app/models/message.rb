class Message 
    include ActiveModel::Model
    attr_accessor :name, :email, :title, :message
    validates :name, :title, :email, :message, presence: true
end
