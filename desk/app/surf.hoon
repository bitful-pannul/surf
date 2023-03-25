/-  surf, blog, social-graph
/+  dbug, default-agent
::
%-  agent:dbug
^-  agent:gall
=>  |%
    +$  versioned-state
      $%  state-1
      ==
    +$  state-1
      $:  %1
          oururl=@t
          :: hmm
      ==
    --
=|  state-1
=*  state  -
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
    card  card:agent:gall
++  on-init
  ^-  (quip card _this)
  `this
++  on-save  !>(state)
++  on-load
  |=  =vase 
  ^-  (quip card _this)
  =+  !<(old=versioned-state vase)
  [~ this(state old)]
::
++  on-poke
  |=  [=mark =vase]
  |^
  ?+    mark  (on-poke:def mark vase)
      %surf-action
    (handle-surf-action bowl !<(act=action:surf vase))
      %blog-action
      :: this actually doesn't need to be here, we can just scry/interact with %blog from the ui. 
    (handle-blog-action bowl !<(act=action:blog vase))
  ::    %handle-http-request
  ::  (handle-http-request bowl !<([@tas inbound-request:eyre] vase))
  ::
  ==
  ::
  ++  handle-surf-action
    |=  [=bowl:gall act=action:surf]
    ^-  (quip card _this)
    ::  ?>  =(src.bowl our.bowl) can be poked from other ships too.
    ?-    -.act
        %link-to
      :: create an edge/node, mayb poke ship I've linked to let them know?
      ::
      `this
    ==
  ++  handle-blog-action
    |=  [=bowl:gall act=action:blog]
    ^-  (quip card _this)
    ?>  =(src.bowl our.bowl)
    :_  this  :_  ~
    :*  %pass
        /blog
        %agent
        [our.bowl %blog-action]
        %poke  %blog-action
        !>(act)  
    ==
  --
::
++  on-agent  on-agent:def
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?>  ?=([%http-response *] path)
  `this
::
++  on-peek  on-peek:def
::
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  ?+  wire  (on-arvo:def wire sign-arvo)
    [%bind ~]  ?>(?=([%eyre %bound %.y *] sign-arvo) `this)
  ==
++  on-leave  on-leave:def
++  on-fail   on-fail:def
--