class User < ApplicationRecord
  has_one_attached :resume

  def resume_url
    if resume.attached?
      resume.blob.service_url
    end
  end
end
