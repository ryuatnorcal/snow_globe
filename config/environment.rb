# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
D::Application.initialize!
# THIS LINE WAS ADDED TO AVOIDE VERSION CHECK THE RMAGICK OTHERWISE GETTING VERSION CHECK ERROR 
RMAGICK_BYPASS_VERSION_TEST = true
