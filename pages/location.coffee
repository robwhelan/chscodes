div '.container', ->
  header '.jumbotron.masthead', ->
    img '#background', src: '/images/78alexmap.jpg', style: 'max-height: 130%;'
    div '.inner', style: 'text-align: left;', ->
      h1 'Where is CODECamp?'
  text '''
  <p>CODEcamp sessions are held at the <a href="http://flagship2.com">Flagship 2</a> facility in downtown Charleston, SC</p>
  '''
  div '.span2', ->
    h3 'Flagship 2'
    text '''
    <address>78 Alexander Street<br />Charleston, SC 29464</address>
    <a href="tel://843-724-3773">843-724-3773</a>
    '''
    hr '.soften'
    i '''
    The parking lot at 78 Alexander Street is open and available for parking after 5:30PM.  During all other times, visitors and students should park in either the Aquarium or Gaillard parking garages nearby.
    '''
  div '.span9', ->
    text '''
    <iframe width="100%" height="600px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?ie=UTF8&amp;cid=13843102708514129649&amp;q=FS2%2FCharleston+Digital+Corridor&amp;gl=US&amp;hl=en&amp;ll=32.789302,-79.930582&amp;spn=0.006295,0.006295&amp;t=v&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?ie=UTF8&amp;cid=13843102708514129649&amp;q=FS2%2FCharleston+Digital+Corridor&amp;gl=US&amp;hl=en&amp;ll=32.789302,-79.930582&amp;spn=0.006295,0.006295&amp;t=v&amp;iwloc=A&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>
    '''