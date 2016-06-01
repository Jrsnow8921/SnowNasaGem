module SnowNasa
  class Marsroverphotos
    include SnowNasa

    def self.cameras
      fhaz = "(FHAZ)= Front Hazard Avoidance Camera- This is onboard Curiosity, Opportunity, and Spirit\n".red
      rhaz = "(RHAZ)= Rear Hazard Avoidance Camera- This is onboard Curiosity, Opportunity, and Spirit\n".green
      mast = "(MAST)= Mast Camera- This is onboard Curiosity only\n".yellow
      chemcam = "(CHEMCAM)= Chemistry and Camera Complex- This is onboard Curiosity only\n".red
      mahli = "(MAHLI)= Mars Hand Lens Imager- This is onboard Curiosity only\n".green
      mardi = "(MARDI)= Mars Descent Imager- This is onboard Curiosity only\n".yellow
      navcam = "(NAVCAM)= Navigation Camera- This is onboard Curiosity, Opportunity, and Spirit\n".red
      pancam = "(PANCAM)= Panoramic Camera- This is onboard Opportunity, and Spirit\n".green
      minites = "(MINITES)= Minature Thermal Emission Spectrometer(Mini-TES)- This in onbard Opportunity, and Spirit\n".yellow
      cams =(
         fhaz +
         rhaz +
         mast +
         chemcam +
         mahli +
         mardi +
         navcam +
         pancam +
         minites)
      list_cams = cams.split(/\n+/).each { |x| puts x }
      return nil
    end

    def self.getMarsPics(options = {})
      sol = options[:sol].to_i
      camera = options[:camera]
      page = options[:page].to_i
      rover = options[:rover]
      if camera.nil?
        base_url = "https://api.nasa.gov/mars-photos/api/v1/rovers/#{rover}/photos?sol=#{sol}&api_key=#{@@nasa_api_key}"
      else
        base_url = "https://api.nasa.gov/mars-photos/api/v1/rovers/#{rover}/photos?sol=#{sol}&camera=#{camera}&api_key=#{@@nasa_api_key}"
      end
      data = open(base_url).read 
      JSON.parse(data)
    end
  end
end


