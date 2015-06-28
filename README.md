# Ruby Key Finder
This gem allow determitate the key of a youtube video by the id of the video.
Look at the next test, to understand how it works:

```Ruby
class KeyFinderServiceTest < Test::Unit::TestCase
  def test_get_key_a_ha_take_on_me_video
    # Prepare
    video_hash = 'djV11Xbc914'

    # Perform
    key = CONTEXT.key_finder.key_of(video_hash)

    # Assert
    assert_equal 'E', key
  end
end
```

# Requisites
1. Install wine emulator:
  * Debian:
      ```
      $ sudo apt-get install wine
      ```
  * Arch:
      ```      
      $ pacman -S wine
      ```
2. Fix youtube_dl gem runing next command:
    ```
    $ ./fix_youtube_dl_gem
    ```
3. Run: 
   ```
   ./download_keyfinder
   ```

To fast requisites installation run (Only for Debian): 
```
$ ./install_requisites 
```

# Test
Run test:
```
$ rake test
```
