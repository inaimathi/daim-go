outer
  @init from-js
  @init -> { __ | tap }
  @req xhr-send
  @board dom-set-html
  @res sse-receive /yodel
  @go-form dom-on-submit

  $pieces []

  @our-input dom-on-change
  @output dom-set-text

  @go-form -> make-move

  piece

  @res -> res-decode -> @output
          res-decode -> { __ | >$pieces.#0 }-> piece -> @board

  res-decode { __ | string uri-decode | list from-json | tap (:x __.x)}
  
  make-move { __ | >form | * (:color _form.color :x _form.x :y _form.y) }

  req-wrapper { ("echo?value=" __in ) | string join on "" }

  make-move -> req-wrapper
  req-wrapper -> @req 