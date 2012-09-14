foo = [
  { name: 'Getting Started with RubyonRails', link: '/classes/rails-101.html', img: '/images/rails_logo.png', startDate: '10/17/2012', times: '6pm - 8:30pm'}
  { name: 'JQuery: All the Goodies', link: '/classes/jquery-101.html', img: '/images/jquery_logo.png', startDate: '10/18/2012', times: '6pm - 8:30pm'}
  { name: 'Website Basics', link: '/classes/website-basics-101.html', img: '/images/html-css-javascript.png', startDate: '10/16/2012', times: '6pm - 8:30pm'}
  { name: 'Cloud Server Management', link: '/classes/ec2-101.html', img: '/images/aws.png', startDate: '10/15/2012', times: '3pm - 5:30pm'}
  { name: 'Getting started with PHP', link: '/classes/php-101.html', img: '/images/php-logo.jpeg', startDate: '10/15/2012',times: '6pm - 8:30pm'}
  { name: 'Intro to NodeJS', link: '/classes/nodejs-101.html', img: '/images/nodejs-dark.png', startDate: '10/17/2012',times: '3pm - 6:30pm'}
  { name: 'Getting started with Clojure', link: '/classes/clojure-101.html', img: '/images/clojure-icon.gif', startDate: '10/18/2012',times: '3pm - 5:30pm'}
]

div '.container', ->
  header '.jumbotron.masthead', ->
    img '#background', src: '/images/codecamp_lab_photo.jpg', style: 'max-height: 100%;'
    div '.inner', style: 'text-align: left;', ->
      h1 'Classes'
    hr '.soften', ''
  div '.row', ->
    ul style: 'list-style: none;', ->
      for klass in foo
        li style: 'border-bottom: 2px solid gray;margin-bottom: 15px;padding-bottom: 10px;', -> 
          div '.row', -> 
            div '.span2', -> img src: klass.img
            div '.span4', ->
              h3 -> a href: klass.link, -> text klass.name
            div '.span3', ->
              table '.table.table-bordered', ->
                tr ->
                  th 'Starts On: '
                  td klass.startDate
                tr ->
                  th 'Times: '
                  td klass.times
                tr ->
                  th 'Length: '
                  td '4 Weeks'
            div '.span2', ->
              a '.btn.btn-primary.pull-right', style: 'margin-top: 30px;', href: klass.link, 'View Class'
