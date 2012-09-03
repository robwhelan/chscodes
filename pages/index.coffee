div '.container', ->
  img '#background', src: '/images/background2.jpg'
  header '.jumbotron.masthead', ->
    div '.inner', style: 'text-align: left;', ->
      h1 'Emerging technologies'
      h1 'taught here.'
      p 'An independent learning platform from the Charleston Digital Corridor and its member companies.'
      div style: 'text-align: center;', ->
        a 'btn.btn-primary.btn-large', href: '/calendar.html', 'Calendar'
        a 'btn.btn-primary.btn-large', href: '/classes.html', 'Find Class'
  div '.marketing', ->
    h1 'Featured Courses'
    div '.row', ->
      div '.span4', ->
        center -> img src: '/images/rails_logo.png', style: 'width:50px;'
        h2 style: 'margin-top: 15px; font-size: 2.8em;', -> a href: '/classes/rails-101.html', 'Ruby on Rails'
        p 'In this class, you will be introduced to Ruby on Rails, and learn how to make simple applications.'
        
      div '.span4', ->
        center -> a href: '/classes/jquery-101.html', -> img src: '/images/jquery_logo.png', style: 'width:200px;'
        h2 style: 'margin-top: 15px; font-size: 2.8em;', -> a href: '/classes/jquery-101.html', 'JQuery'
        p style: 'display:block;', 'In this class, you will learn how to use jQuery from beginning to end.'
      div '.span4', ->
        center -> a href: '/classes/website-basics-101.html', -> img src: '/images/html-css-javascript.png', style: 'width:100px;'
        h2 style: 'display: inline;color: rgba(0,0,0,.8);font-size: 2.8em;',  -> a href: '/classes/website-basics-101.html', 'HTML Basics'
        p 'Learn the Basics of the web'
