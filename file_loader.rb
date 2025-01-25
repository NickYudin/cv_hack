require 'pdf-reader'

class FileLoader
# Function to extract text from PDF
  def run(pdf_path)
    # Create a new PDF reader instance
    reader = PDF::Reader.new(pdf_path)
    text = ""

    # Iterate through each page of the PDF
    reader.pages.each do |page|
      text += page.text
    end

    text
  end
end