class UploadFile < ApplicationRecord
    mount_uploader :attachment, AttachmentUploader 
end
