class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chat_subscribers, as: :subscriber, class_name: 'ChatEngine::ChatSubscriber'
  has_many :chats, through: :chat_subscribers, class_name: 'ChatEngine::Chat'
  has_many :messages, as: :sender, class_name: 'ChatEngine::Message'
end
