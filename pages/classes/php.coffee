course = {
  startdate: 'Sept 17, 2012'
  name: 'PHP 101'
  title: 'Starting off with PHP Hypertext Processor'
  section: '101'
  imgSponsor: 'http://www.blueacorn.com/wp-content/themes/blueacorn/images/logo.png'
  instructor: 'Brys Sepulveda, Systems Architect at Blue Acorn'
  instructorPhoto: 'http://www.blueacorn.com/wp-content/themes/blueacorn/images/staff/brys_sepulveda.jpg'
  instructorBio: '''
  Brys Sepulveda came out of the womb with a laptop in hand. Arguably from the last generation 
  that existed in a time before the Internet, Brys started his fascination with computers as a 
  toddler playing with his older brother's gaming consoles. The magic and wonder instilled in 
  him from those devices still drives him today to pursue the amazing world of computers. With 
  a passion for software engineering unparalleled in the industry, Brys has always striven to 
  write elegant, efficient, and maintainable code. He strongly holds the belief that programming 
  is an artisan craft much like clock making or carpentry. It's an art form that takes nothing 
  but yourself and logic and creates something functional and beautiful. Having graduated from 
  CofC with a BS in Computer Science in 2011, Brys is fresh off the boat in the work force. But, 
  in just one year at Blue Acorn hes gone from being an Intern to a Systems Architect and heading 
  a team of 6 as a technical lead. Brys teaches everyday as he lives and breathes PHP. As a technical 
  lead, he is often in demand for solving problems and providing solutions. He has taught numerous 
  internal classes at Blue Acorn both in the basics of PHP and advanced Object Oriented Design concepts.
  '''
  intro: 'In this class, students will start the journey to learning the language that drives the internet!'
  description: '''
  PHP runs more than 75% of all websites on the internet placing it far in front of the pack. 
  Designed to be easy, portable, flexible, and maintainable, PHP stands at the cutting edge of web 
  technologies. From Facebook to Wikipedia to the ever popular WordPress blog, all of these are written 
  in PHP. Come learn what all the hype is about and what PHP can hold in store for you.
  '''
  sessions: [
    'Session 1: Syntax, Semantics, and Separation'
    'Session 2: Boistful Blogging'
    'Session 3: Actionable Administration'
    'Session 4: Integral Integrations'
  ],
  skillsets: [
    'Problem Solving Skills'
    'Basic Programming'
    'Basic OOD (Object Oriented Development)'
  'HTML'
  ],
  resourceDescription: '''
  In order to excel in this course, previous exposure to any programming language is highly recommended. 
  As an introduction to PHP, this course's main focus is to get you acclimated to the gotchas of PHP and 
  the power that PHP gives you. With such a huge standard library, PHP comes so fully loaded that we could 
  never cover everything so the topics will be as expansive as possible. Bring a willingness to learn and 
  a good attitude. Nothing is more required for this course than the want and drive to learn and improve. 
  More advanced topics will be covered in PHP 102.
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
        Previous exposure to other programming languages is extremely helpful. 
    Experience with markup languages is good. Knowledge of Object Oriented Design is great. 
    Any experience running a website, writing a blog, or doing any light web development can go a 
    long way.
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
