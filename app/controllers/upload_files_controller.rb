class UploadFilesController < ApplicationController
   def index
      @upload_files = UploadFile.all
   end
   
   def rename
      
      @upload_file = UploadFile.find(params[:upload_file][:id])
      @upload_file.update(filename: params[:upload_file][:filename])
      
      redirect_to upload_files_path, notice:  "File has been renamed."
   end
   
   
   def new
      @upload_file = UploadFile.new
   end
   
   def create
      @upload_file = UploadFile.new(upload_file_params)
      
      if @upload_file.save
         redirect_to upload_files_path, notice: "File has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @upload_file = UploadFile.find(params[:id])
      @upload_file.destroy
      redirect_to upload_files_path, notice:  "File has been deleted."
   end
   
   private
      def upload_file_params
      params.require(:upload_file).permit(:attachment)
   end
   
end