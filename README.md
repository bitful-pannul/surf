### %surf

##### Linking with %social-graph. 

stateless for now, scry %blog for data, and add %social-graph interactions.
My graph will store a blog path, and edges to other blogs on other ships.

big todo: 

- include a metadata tag in the %blog html, that includes ship + (optional signature for verification)

this will enable users to just paste a blog url they found on web/twitter, and it will automatically populate their social graph.

Currently this does not happen, if you select a @p, it will poke their ship, ask for url + ship. This is fine for now. 
(few issues with this too, ~dachus prefers a scry-maxi approach, wherein http links are just a temporary rendered thing for 2nd class citizens)


utilize %private %public & %only-tagged. top level domains too?

graph path setup:
```=hoon
/gang/~ship/name-of-gang
/linked/name-of-blog         :: top level home? /home or 
```

