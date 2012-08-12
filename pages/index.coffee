div '.container', ->
  header '.jumbotron.masthead', ->
    div '.inner', ->
      center -> img src: 'http://charlestoncodes.jpg.to'
      h1 'CODE CAMP'
      p 'Charleston, SC'
      p 'An independent, augmentative education program conceived in collaboration with software technology companies in the Charleston Digital Corridor'
      div style: 'text-align: center;', ->
        a 'btn.btn-primary.btn-large', href: '#', 'Calendar'
        a 'btn.btn-primary.btn-large', href: '#', 'Find Class'
  hr '.soften', ''
  div '.marketing', ->
    h1 'Featured Courses'
    div '.row', ->
      div '.span4', ->
        img '.bs-icon', src: 'http://rubyonrails.jpg.to', style: 'width:50px;'
        h2 style: 'display: inline;color: rgba(0,0,0,.8);font-size: 2.8em;', 'Ruby on Rails'
        p 'Building Web Applications'
      div '.span4', ->
        img src: 'http://jquery-logo.jpg.to', style: 'width:200px;'
        p style: 'display:block;', 'Front End Web Development'
      div '.span4', ->
        img '.bs-icon', src: 'http://html5-logo.jpg.to', style: 'width:50px;'
        h2 style: 'display: inline;color: rgba(0,0,0,.8);font-size: 2.8em;',  'HTML Basics'
        p 'Learn the Basics of the web'
  hr '.soften', ''
  div '.marketing', ->
    h1 'Sponsors'
    div '.row', ->
      for sponsor in ['CSS', 'SineLabs', 'SPARC']
        div '.span4', ->
          img '.bs-icon', src: 'http://placehold.it/30&text=logo'
          h2 style: 'display: inline;color: rgba(0,0,0,.8);font-size: 2.8em;', sponsor
          p 'by-line'
    div '.row', ->
      for sponsor in ['BOOMTOWN', 'BLUE ACORN', 'BENEFIT FOCUS']
        div '.span4', ->
          img '.bs-icon', src: 'http://placehold.it/30&text=logo'
          h2 style: 'display: inline;color: rgba(0,0,0,.8);font-size: 2.8em;', sponsor
          p 'by-line'
    div '.row', ->
      for sponsor in ['PEOPLEMATTER', 'JACK RUSSELL SOFTWARE', 'KING & PARTNERS']
        div '.span4', ->
          img '.bs-icon', src: 'http://placehold.it/30&text=logo'
          h2 style: 'display: inline;color: rgba(0,0,0,.8);font-size: 2.8em;', sponsor
          p 'by-line'
    div '.row', ->
      for sponsor in ['LIFE CYCLE ENGINEERING']
        div '.span4', ->
          img '.bs-icon', src: 'http://placehold.it/30&text=logo'
          h2 style: 'display: inline;color: rgba(0,0,0,.8);font-size: 2.8em;', sponsor
          p 'by-line'
  hr '.soften', ''
  footer ->
    ul '.nav', ->
      li 'Copyright 2012'
      li 'info@charlestoncodes.com'
      li '843-724-3773'
      li '78 ALEXANDER ST · CHARLESTON, SC · 29403'