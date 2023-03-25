::  %surf
::  
::  link someones blog/surf => %link-to ~zod /home /home http://zod.com
::  pokes their ship, get back a url, link to them.
::
::  your post gets linked, receive %link-to action, store a link, poke back
::  with a url, %link-from
::
|%
++  action
  $%  [%link-to =ship =path ourpath=path oururl=@t]
      [%link-from =ship =path url=@t]
  ==
::
::
::  the naive more easy way
++  naiveaction
  $%  [%link-to =ship =path]
      [%share ~]    :: share a node/edge with the ship I'm linking with to let them know?
  ==
::  how to know the url of a blog is basically the issue
::  ahhhhh dreaming of remote scry...
--