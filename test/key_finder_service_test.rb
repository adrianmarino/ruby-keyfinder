require "helper"

class KeyFinderServiceTest < Test::Unit::TestCase

	# -------------------------------------------------------------------------
	# Test Methods...
	# -------------------------------------------------------------------------

	def test_get_key_a_ha_take_on_me_video
		# Prepare
		video_hash = 'djV11Xbc914'

		# Perform
		key = CONTEXT.key_finder.key_of(video_hash)

		# Assert
		assert_equal 'E', key
	end

end
