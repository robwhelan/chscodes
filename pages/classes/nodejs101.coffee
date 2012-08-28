course = {
  startdate: 'Sept 17, 2012'
  name: 'NodeJs 101'
  title: 'NodeJs: Getting Started with NodeJs'
  section: 'Part 101'
  imgSponsor: 'http://placehold.it/200x100&text=Sponsor'
  instructor: 'Tom Wilson, Chief Technologist of Jack Russell Software'
  instructorPhoto: 'http://placehold.it/200&text=Photo'
  instructorBio: '''
  Tom Wilson started hacking on computers at the early age of 9 years 
  old during the days of the Apple II and Commodore 64.  Tom has worked as 
  a Software Developer since the early 90's.  When the buzz was all about 
  wysiwyg and client/server software. 

  Focused on Healthcare Application Development for most of his career, Tom 
  has been building large scale and complex healthcare web applications for 
  over a decade. Tom Wilson believes that web application development is one 
  of the most complicated professions on the planet.

  Tom loves to teach as much as he loves to learn. Everywhere he has worked, 
  he has always focused on improving the developer's skills as much as 
  delivering quality software.  Tom has given many talks and workshops, and 
  is an active member in the Charleston Software Development Community.  He 
  leads the Charleston Ruby Group and is the founder of the Charleston 
  Javascript Group.

  Toms' knowledge, experience and passion provide a wealth of value for anyone 
  interested in the craft of software development.
  '''
  intro: 'In this class, you will learn what NodeJs is, and how to use its strengths.'
  description: '''
  NodeJs is the technology of 2012 and it is everywhere, from Microsoft to Startups.  
  This is the hottest technology framework for the web since RubyonRails.  Take this class
    and find out why.  In just four weeks, you will learn what nodejs is, and how to use node
    to build File Servers, Chat Servers, and a Micro Blog site.  These application are simple,
    but will give you a full overview of NodeJs and what you can do with this powerful new
    technology.
  '''
  sessions: [
    'Session 1: What is NodeJs?'
    'Session 2: Node Package Manaager'
    'Session 3: Socket.IO and Events'
    'Session 4: Full Stack NodeJs - ExpressJs'
  ],
  skillsets: [
    'Programming'
    'Web Development'
    'Javascript'
  ],
  resourceDescription: '''
  To get the most out of this course, you should have general programming knowledge,
  have experience working with web development technologies, like php, django, rails.

  Experience with Javascript.  This is an introductory course into nodejs, so we will 
  not cover deep nodejs topics, we will touch on some core principals and learn how
  to use the framework.  If your interested in more advanced topics look at NodeJs Part 2.
  ''',
  faqs: [{
      question: 'Will I get a statement of accomplishment after completing this class?'
      answer: 'Yes. Students who successfully complete the class will receive a statement of accomplishment signed by the instructor.'
    }, {
      question: 'What is the format of the class?'
      answer:   '''
        The class consists of four lectures, which are usually around 60 minutes. One lecture
        each session, following the lecture there will be a 80 minute lab.  The lab will consist
        of exercises pertinent to the lecture.
        '''
    }, {
      question: 'What should I know to take this class?'
      answer: '''
        Knowing JavaScript is a real plus, having worked with JQuery and other frameworks 
        is also a plus.
        
        How to program in at least one programming language (like C, Java, Ruby, or Python); experience
        with HTTP is a real plus.
        '''
  }]
} 

div '.container', ->
  header style: 'margin-bottom: 20px;', ->
    div '.subnav.subnav-fixed', ->
      ul '.nav.nav-pills', ->
        li -> a href: '#top', -> course.name
        li -> a href: '#about', 'About The Course'
        li -> a href: '#instructor', 'About The Instructor'
        li -> a href: '#resources', 'Required Resources'
        li -> a href: '#faq', 'Frequently Asked Questions'

div '.container', ->
  div '.row', ->
    div '.span5', ->
      img src: course.imgSponsor
      div '.well', style: 'margin: 20px 0 20px 0;', ->
        h1 -> course.title
        h2 -> course.section
      h3 -> course.instructor
      p -> course.intro
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
        text course.startDate + ' (4 weeks long)'
      p ->
        b 'Workload:'
        text ' 2.5 hours/week'
      p -> a href: '#', 'Emerging Technologies'
      p -> a href: '#', 'Backend Web Programming'
    div '.span3', ->
      button '.btn', 'Tweet'
      button '.btn', '+1'
      button '.btn', 'Like'
  hr()
  div '.row', ->
    h2 'About the Course'
    div '.span4', ->
      h3 'Course Outline'
      ul ->
        for session in course.sessions
          li session
    div '.span5', ->
      p course.description
  div '.row', ->
    h2 'About the Instructor'
    div '.span3', ->
      img src: course.instructorPhoto, style: 'margin: 10px;'
    div '.span6', course.instructorBio
      
  div '.row', ->
    h2 'Required Resources'
    div '.span3', ->
      h3 'Skillsets'
      ul ->
        for skill in course.skillsets
          li skill
    div '.span6', course.resourceDescription
  div '.row', ->
    h2 'Frequently Asked Questions'
    div '.span3', ->
      img src: 'http://placehold.it/200&text=faq_pic', style: 'margin: 20px;'
    div '.span6', ->
      ul ->
        for faq in course.faqs
          li ->
            h3 faq.question
            p faq.answer
