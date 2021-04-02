# download private playlist

This is merely a bash wrapper around [youtube-dl](https://github.com/ytdl-org/youtube-dl) to make my common use-case easier.

Often I want to download the audio only of private playlists, and I want the output to go to a specified output dir. This use case requires a cookie file, and some particular arguments, so I thought I'd make a script to make like easier.

To get your cookie file, follow the instructions here: [How to Download Private Videos From Youtube With Youtube-Dl](https://daveparrish.net/posts/2018-06-22-How-to-download-private-YouTube-videos-with-youtube-dl.html)

This is a personal script, not meant for public use. However, it could serve as an example for creating something similar.

## Usage

After setting up the cookie file, you will need to change the COOKIE_FILE variable in the script to point to the location of the cookie file (I keep it in the same location as the script itself).

Then simply run the script with 2 arguments: (1) the URL of the playlist/video, (2) the dir to output files to.

I have an alias to run my script called "download-audio", so for me it looks like this:

```
$ download-audio <youtube URL> <output dir>
```

## Notes about the script

The reason the path to the cookie file is hard-coded is because I want to be able to run this script from any dir and not have to depend on the cookie file being there. Relative paths in bash are kind of a pain, so the easiest/laziest option is to just hard-code the place where you keep the file.

The reason I went with the cookie method instead of the username/password method is simply because I couldn't get it to work. I kept getting 400 errors. I saw some unresolved issues related to this in the youtube-dl github, so I think it's not just me. The cookie method is a slight pain but it's not that bad.


