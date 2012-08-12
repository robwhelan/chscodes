div '.container', ->
  header style: 'margin-bottom: 20px;', ->
    div '.subnav.subnav-fixed', ->
      ul '.nav.nav-pills', ->
        li -> a href: '#top', 'Rails 101'
        li -> a href: '#about', 'About The Course'
        li -> a href: '#instructor', 'About The Instructor'
        li -> a href: '#resources', 'Required Resources'
        li -> a href: '#faq', 'Frequently Asked Questions'

div '.container', ->
  div '.row', ->
    div '.span5', ->
      img src: 'http://placehold.it/200x100&text=Sponsor'
      div '.well', style: 'margin: 20px 0 20px 0;', ->
        h1 'RubyonRails: Building Web Applications'
        h2 'Part 101'
      h3 'Tom Wilson, Chief Technologist of Jack Russell Software'
      p 'In this class, you will get a basic overview of Ruby on Rails, learn how Rails implements the MVC Architecture'
    div '.span5.offset1', ->
      img src: 'http://placehold.it/400x300&text=Video'
      div style: 'margin-top: 30px;', ->
        button '.btn.btn-primary.btn-large', 'Sign Up'
        text '&nbsp;&nbsp;&nbsp;'
        button '.btn.btn-primary.btn-large', 'Questions'

  hr()
  div '.row', ->
    div '.span7', ->
      p ->
        b 'Starts On:'
        text ' Sept 11, 2012 (4 weeks long)'
      p ->
        b 'Workload:'
        text ' 2.5 hours/week'
      p ->
        a href: '#', 'Emerging Technologies'
    div '.span3', ->
      button '.btn', 'Tweet'
      button '.btn', '+1'
      button '.btn', 'Like'
  hr()
  div '.row', ->
    h2 'About the Course'
    div '.span3', ->
      h3 'Course Outline'
      ul ->
        li -> 'Session 1: Rails Philosophy and Concepts'
        li -> 'Session 2: Rails Controllers and REST'
        li -> 'Session 3: Rails Views and Helpers'
        li -> 'Session 4: Rails Models and ActiveRecord'
    div '.span6', ->
      p '''
      In this course you will get an introductory over view of the popular ruby on rails framework.
      Ruby on Rails is a Web Application Development framework that is used to create software as a service
      applications.  You will get a full understanding of what the concepts and philosopy of rails, as well as
      learn how to create data driven applications in rails, 
      and how to leverage the Model-View-Controller architecture.
      '''

  div '.row', ->
    h2 'About the Instructor'
    div '.span3', ->
      img src: 'http://placehold.it/200&text=Photo', style: 'margin: 10px;'
    div '.span6', ->
      p '''Tom Wilson started hacking on computers at the early age of 9 years 
      old during the days of the Apple II and Commodore 64.  Tom has worked as 
      a Software Developer since the early 90's.  When the buzz was all about 
      wysiwyg and client/server software. 
      '''
      p '''
      Focused on Healthcare Application Development for most of his career, Tom 
      has been building large scale and complex healthcare web applications for 
      over a decade. Tom Wilson believes that web application development is one 
      of the most complicated professions on the planet.
      '''
      p '''
      Tom loves to teach as much as he loves to learn. Everywhere he has worked, 
      he has always focused on improving the developer's skills as much as 
      delivering quality software.  Tom has given many talks and workshops, and 
      is an active member in the Charleston Software Development Community.  He 
      leads the Charleston Ruby Group and is the founder of the Charleston 
      Javascript Group.
      '''
      p '''
      Toms' knowledge, experience and passion provide a wealth of value for anyone 
      interested in the craft of software development.
      '''
  div '.row', ->
    h2 'Required Resources'
    div '.span3', ->
      h3 'Skillsets'
      ul ->
        li 'Programming'
        li 'Web Development'
        li 'HTML'
        li 'SQL Databases'
    div '.span6', ->
      p '''
      To get the most out of this course, you should have general programming knowledge,
      have experience working with web development technologies, like php, java or asp.net.
      '''
      p '''
      Experience with HTML and working Relational Databases will also help you get the most
      of the course.
      '''
  div '.row', ->
    h2 'Frequently Asked Questions'
    div '.span3', ->
      img src: 'http://placehold.it/200&text=faq_pic', style: 'margin: 20px;'
    div '.span6', ->
      ul ->
        li ->
          h3 'Will I get a statement of accomplishment after completing this class?'
          p 'Yes. Students who successfully complete the class will receive a statement of accomplishment signed by the instructor.'
        li ->
          h3 'What is the format of the class?'
          p '''
          The class consists of four lectures, which are usually around 60 minutes. One lecture
          each session, following the lecture there will be a 80 minute lab.  The lab will consist
          of exercises pertinent to the lecture.
          '''
        li -> 
          h3 'What should I know to take this class?'
          p '''
          How to program in at least one programming language (like C, Java, or Python); experience
          with HTML and Relational Databases (MySQL, Postgres, SQL Server, etc)
          '''