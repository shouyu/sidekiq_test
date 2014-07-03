class MessageWorker
  include Sidekiq::Worker

  def perform(id)
    m = Message.find_by_id(id)
    m.body = m.body.swapcase
    m.save
    sleep 1
  end
end
