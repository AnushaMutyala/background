class ContactWorkerWorker
  include Sidekiq::Worker

  def perform(message)
    ContactMailer.submission(message).deliver
  end
end
