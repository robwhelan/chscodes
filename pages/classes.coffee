div '.container', ->
  h1 'Classes'
  hr '.soften', ''
  div '.row', ->
    div '.span3', ->
      b 'Filter&nbsp;&nbsp;'
      select ->
        option 'All Categories'
    div '.span4', ->
      b 'Sort By&nbsp;&nbsp;'
      select ->
        option 'Start Date'
    div '.span4', ->
      b 'Search&nbsp;&nbsp;'
      input type: 'search'
  hr '.soften', ''
  div '.row', ->
    ul style: 'list-style: none;', ->
      li -> 
        div '.row', ->
          div '.span2', ->
            img src: 'http://rubyonrails.jpg.to'
          div '.span5', ->
            h3 -> a href: '/classes/ror.html', 'RubyonRails: Building Web Applications - Part 1'
            button '.btn.btn-primary.pull-right', style: 'margin-top: 60px;', 'View Class'
          div '.span3', ->
            p '9/19/2012 (4 weeks)'
            p '6pm - 8:30pm'
      li -> 
        div '.row', ->
          div '.span2', ->
            img src: 'http://jquery-logo.jpg.to'
          div '.span5', ->
            h3 -> a href: '/classes/jquery-logo.html', 'JQuery: Front End Web Dev - Part 1'
            button '.btn.btn-primary.pull-right', style: 'margin-top: 60px;', 'View Class'

          div '.span3', ->
            p '9/19/2012 (4 weeks)'
            p '6pm - 8:30pm'

      li -> 
        div '.row', ->
          div '.span2', ->
            img src: 'http://html.jpg.to'
          div '.span5', ->
            h3 -> a href: '/classes/website-basics.html', 'Website Basics'
            button '.btn.btn-primary.pull-right', style: 'margin-top: 60px;', 'View Class'

          div '.span3', ->
            p '9/19/2012 (4 weeks)'
            p '6pm - 8:30pm'

      li -> 
        div '.row', ->
          div '.span2', ->
            img src: '/images/aws.png'
          div '.span5', ->
            h3 -> a href: '/classes/ec2-101.html', 'CLOUD: EC2'
            button '.btn.btn-primary.pull-right', style: 'margin-top: 60px;', 'View Class'

          div '.span3', ->
            p '9/19/2012 (4 weeks)'
            p '6pm - 8:30pm'

      li -> 
        div '.row', ->
          div '.span2', ->
            img src: 'http://php5.jpg.to'
          div '.span5', ->
            h3 -> a href: '/classes/php.html', 'PHP'
            button '.btn.btn-primary.pull-right', style: 'margin-top: 60px;', 'View Class'

          div '.span3', ->
            p '9/19/2012 (4 weeks)'
            p '6pm - 8:30pm'

      li -> 
        div '.row', ->
          div '.span2', ->
            img src: 'http://nodejs.jpg.to'
          div '.span5', ->
            h3 -> a href: '/classes/nodejs101.html', 'NodeJS'
            button '.btn.btn-primary.pull-right', style: 'margin-top: 60px;', 'View Class'

          div '.span3', ->
            p '9/19/2012 (4 weeks)'
            p '6pm - 8:30pm'

      li -> 
        div '.row', ->
          div '.span2', ->
            img src: 'http://clojure.jpg.to'
          div '.span5', ->
            h3 -> a href: '/classes/introtoclojure.html', 'Clojure'
            button '.btn.btn-primary.pull-right', style: 'margin-top: 60px;', 'View Class'

          div '.span3', ->
            p '9/19/2012 (4 weeks)'
            p '6pm - 8:30pm'

