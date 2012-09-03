div '.container', ->
  img '#background', src: '/images/email-envelope.jpg'
  header '.jumbotron.masthead', ->
    div '.inner', style: 'text-align: left;', ->
      h1 'Contact'
  i 'We welcome any inquiries you may have.  Our physical address, phone number, and e-mail address are shown below, or you may fill out and submit the form to the right.'
  hr '.soften'
  div '.span2.offset1', ->
    h3 -> a href: 'http://flagship2.com', 'Flagship 2'
    text '''
    <address>78 Alexander Street<br />Charleston, SC 29464</address>
    <phone><a href="tel://843-724-3773">843-724-3773</a></phone>
    '''
  div '.span4.offset1', ->
    form ->
      label 'Full Name'
      input '.span4', type: 'text', autofocus: true
      label 'Email'
      input '.span4', type: 'email'
      label 'Message'
      textarea '.span4', rows: 5
      button '.btn.btn-primary', 'Send'