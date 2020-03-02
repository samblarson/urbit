/+  *test, pinto
::
=/  scry=sley
  |=  [* (unit (set monk)) tem=term bem=beam]
  ^-  (unit (unit cage))
  =-  (~(get by -) tem bem)
  %-  ~(gas by *(map [term beam] (unit cage)))
  :~  :-  cx+[[~nul %home da+~1234.5.6] /hoon/foo/lib]
      `hoon+!>('%bar')
  ==
=/  ford  ((pinto) ~nul %home ~1234.5.6 scry)
=/  ca  (by-clock:contain hoon-cache-key:ford vase)
=/  hoon-cache  (clock hoon-cache-key:ford vase)  ::  TODO: broken import?
=|  =hoon-cache
|%
++  test-make-ride  ^-  tang
  ::
  =/  m  (fume:ford ,cage)
  =/  out=output:m
    ((make:ford %ride $+noun+!>([%foo 17]) (ream '-')) ~ *^hoon-cache)
  ::
  ;:  welp
    %+  expect-eq
      !>  %foo
      ?>(?=(%done -.next.out) q.value.next.out)
  ::
    %+  expect-eq
      !>  `(list @tas)`(turn ~(tap in ~(key by lookup.s.out)) head)
      !>  `(list @tas)`~[%ride %slim]
  ==
++  test-run-root-build-load-synchronous  ^-  tang
  =/  [=product:ford =build-state:ford =^hoon-cache]
    %:  run-root-build:ford
      ^-  build:ford
      :*  live=%.n
          desk=%home
          case=da+~1234.5.6
          plan=[%load %x /lib/foo/hoon]
      ==
    ::
      ^-  build-state:ford
      [fum=~ cur=~ pre=~]
    ::
      ^-  (unit (unit cage))
      ~
    ==
  ::
  ;:  welp
    %+  expect-eq
      !>  %hoon
      ?>(?=([~ %& *] product) !>(p.p.u.product))
  ::
    %+  expect-eq
      !>  '%bar'
      ?>(?=([~ %& *] product) q.p.u.product)
  ::
    %+  expect-eq
      !>  `build-state:ford`build-state(cur ~)
      !>  `build-state:ford`[fum=~ cur=~ pre=~]
  ::
    %+  expect-eq
      !>  `(list spar:ford)`~(tap in ~(key by cur.build-state))
      !>  `(list spar:ford)`[%x /lib/foo/hoon]~
  ==
--
