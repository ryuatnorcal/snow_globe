class CreateProfiles < ActiveRecord::Migration
#
#	user profile has user's personal infromation which you may need to modify at maps and meet up app
#	user_id : the same as current_user. id 	
# firstName and LastName 
# bithday 
# introduce 
#
# [Need to add]
# home_trail : store the most favorite trail
# zip : find user's area 
# type : type has snowbaorder or skiyer 
# guear_board :
# guear_binder:
# guear_boots:
# guear_pants:
# guear_jackets:
# guear_headwear:
# youtube : future feature for YouTube app
# vimeo : future feature for vimeo 
# meet_up_attended: meetup function count attended times
# meet_up_planning: meetup function count planning times
# meet_up_absent:		meetup function count absent times
# meet_up_canceled: meetup function count canceled trip times 
# meet_up_status: 	patisipater or organaizer/coorganaizer status 
# 
  def change
  	
    create_table :profiles do |t|
      t.integer :user_id
      t.string :firstName
      t.string :lastName
      t.date :birthday
      t.text :introduce
    #  t.date :joindate
    # from here added 
    	t.string :home_trail
    	t.string :zip					# geocoder the same as address 
    	t.string :style
    	t.string :guear_board
    	t.string :guear_binder
    	t.string :guear_boots
    	t.string :guear_pants
    	t.string :guear_jackets
    	t.string :guear_headwear
    	t.string :youtube
    	t.string :vimeo
    	t.boolean :meet_up_attended
    	t.boolean :meet_up_planning
    	t.boolean :meet_up_absented
    	t.boolean :meet_up_canceled
    	t.string :meet_up_status
		# following values are used at geocoder
			t.float :latitude
			t.float :longitude
			
      t.timestamps
    end
  end
end
