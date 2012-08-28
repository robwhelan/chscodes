course = {
  startdate: 'Sept 20, 2012'
  name: 'jQuery'
  title: 'jQuery: All the goodies!'
  section: '101'
  imgSponsor: 'http://placehold.it/200x100&text=Sponsor'
  instructor: 'Nick Bucciarelli, Programmer/Analyst at Jack Russell Software'
  instructorPhoto: 'http://placehold.it/200&text=Photo'
  instructorBio: '''
    Nick Bucciarrelli is a proficient, adaptive computer programmer and open source evangelist. Effective in identifying and solving complex problems, Bucciarelli currently serves as a computer programmer and analyst for Jack Russell Software in Mt. Pleasant. Bucciarelli is an active member of the Charleston Software Development community; he regularly presents at the Charleston Ruby Group and served as a speaker for the 2010 BarCampCHS conference. His programming skills include Ruby on Rails; CoffeScript/JavaScript; HTML/HAML; XML/JSON; MySql; CouchDB/MongoDB; and jQuery, among others.
    
    Nick earned a Bachelor’s Degree of Science in Game Development from Full Sail University in Winter Park Florida in 2009.
  '''
  intro: 'In this class, you will learn how to use jQuery from beginning to end.'
  description: '''
    jQuery is a cross-browser JavaScript library designed to simplify the client-side scripting of HTML. It was released in January 2006 at BarCamp NYC by John Resig. Used by over 52% of the 10,000 most visited websites, jQuery is the most popular JavaScript library in use today. The use of the name jQuery is somewhat misleading, as the library has little to do with queries. Shortly after its release in January 2006, author John Resig stated, "I was, originally, going to use JSelect, but all the domain names were taken already."

    In this course, we will create multiple mini-applications in the browser illustrating the use and power of jQuery in modern web development. While there are numerous other javascript libraries and frameworks available (such as Prototype, MooTools, etc.) that offer similar features, jQuery is by far the most popular and most commonly encountered. Additionally, if you know jQuery well, you can easily and fairly quickly learn to use any other javascript library.
  '''
  sessions: [
    'Session 1: What is jQuery?'
    'Session 2: Making things happen'
    'Session 3: Widgets and Interactions'
    'Session 4: jQuery Mobile'
  ],
  skillsets: [
    'Programming'
    'Web Development'
    'Javascript'
    'HTML'
    'Basic CSS'
  ],
  resourceDescription: '''
  To get the most out of this course a strong knowledge of HTML and JavaScript is necessary. Along with basic selection methods in CSS (using ID's and classes). 
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
      markdown course.description
  div '.row', ->
    h2 'About the Instructor'
    div '.span3', ->
      img src: course.instructorPhoto, style: 'margin: 10px;'
    div '.span6', ->
      markdown course.instructorBio
      
  div '.row', ->
    h2 'Required Resources'
    div '.span3', ->
      h3 'Skillsets'
      ul ->
        for skill in course.skillsets
          li skill
    div '.span6', ->
      markdown course.resourceDescription
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
