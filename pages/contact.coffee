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
    <address>78 Alexander Street<br />Charleston, SC 29403</address>
    <phone><a href="tel://843-724-3773">843-724-3773</a></phone>
    '''
  div '.span6.offset1', 'ng-controller': 'ContactCtrl', ->
    div '.alert.alert-error', 'ng-show': 'httpError', ->
      button '.close', 'data-dismiss': 'alert', 'x'
      strong 'Error! '
      text 'An Error occured trying to send message, please contact administrator at admin@charlestoncodes.com'
    div '.alert.alert-success', 'ng-show': 'success', ->
      button '.close', 'data-dismiss': 'alert', 'x'
      strong 'Success! '
      text 'Thank you for sending your message, we will contact you shortly!'
    form name: 'contactForm', ->
      div '.control-group', 'ng-class': "{error: contactForm.name.$invalid}", ->
        label 'Full Name'
        input '.span4', type: 'text', name: 'name', 'ng-model': 'msg.name', required: true, autofocus: true, placeholder: 'Your Name'
        span '.help-inline', 'ng-show': 'contactForm.name.$error.required', 'Required'
      div '.control-group', 'ng-class': "{error: contactForm.email.$invalid}", ->
        label 'Email'
        input '.span4', type: 'email', name: 'email', 'ng-model': 'msg.email', required: true, placeholder: 'you@email.com'
        span '.help-inline', 'ng-show': 'contactForm.email.$error.required', 'Required'
        span '.help-inline', 'ng-show': 'contactForm.email.$error.email', 'Not a Email'
      div '.control-group', 'ng-class': '{error: contactForm.message.$invalid}', ->
        label 'Message'
        textarea '.span4', rows: 5, name: 'message', 'ng-model': 'msg.body', required: true
        span '.help-inline', 'ng-show': 'contactForm.message.$error.required', 'Required'
      button '.btn.btn-primary', 'ng-click': "send()", 'ng-disabled': 'contactForm.$invalid', 'Send'