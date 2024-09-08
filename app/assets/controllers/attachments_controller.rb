class AttachmentsController < ApplicationController
  require 'zip'

  before_action :find_issue

  def download_attachments
    attachment_ids = params[:attachments]

    if attachment_ids.count == 1
      # Direct download if only one attachment is selected
      attachment = Attachment.find(attachment_ids.first)
      send_file attachment.diskfile, filename: attachment.filename
    else
      # Create a zip file for multiple attachments
      project_name = @issue.project.name.parameterize
      issue_name = @issue.subject.parameterize
      current_time = Time.now.strftime("%Y%m%d%H%M%S")
      zip_filename = "#{project_name}-#{issue_name}-#{current_time}.zip"

      temp_file = Tempfile.new(zip_filename)

      begin
        Zip::File.open(temp_file.path, Zip::File::CREATE) do |zipfile|
          attachments = Attachment.where(id: attachment_ids)
          attachments.each do |attachment|
            zipfile.add(attachment.filename, attachment.diskfile)
          end
        end

        send_file temp_file.path, type: 'application/zip', disposition: 'attachment', filename: zip_filename
      ensure
        temp_file.close
        temp_file.unlink # Delete temp file after download
      end
    end
  end

  private

  def find_issue
    @issue = Issue.find(params[:id])
  end
end
