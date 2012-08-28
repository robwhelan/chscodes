course = {
  startdate: 'Sept 17, 2012'
  name: 'Ruby on Rails 101'
  title: 'Ruby on Rails: An Introduction to Rails'
  section: '101'
  imgSponsor: 'http://placehold.it/200x100&text=Sponsor'
  instructor: 'Matt Scott, Applications Analyst at MUSC: OBIS'
  instructorPhoto: 'http://placehold.it/200&text=Photo'
  instructorBio: '''
  Matt Scott started programming in middle school working with HTML and CSS to make simple webpages.  He continued a hobby interest in programming, however ended up graduating with a degree in English/History.  After graduation he promptly decided to completely switch directions and taught himself Ruby and Ruby on Rails.

  Beginning, first as an intern, but quickly being promoted to a full development position, and then a team leader, Matt Scott has worked at the Medical University of South Carolina's Office of Biomedical Informatics for the last year and a half.  At OBIS Matt develops applications using Ruby on Rails for SCTR, MUSC's Clinical and Translational Research Institute.

  Matt has a talent for explaining things to others, and a love of teaching as well as learning.  His has tutored and given seminars on topics ranging from European history to Javascript development, to 3D graphics design; and as a team leader at OBIS has experience teaching both experienced developers and complete newcomers the wonders of Ruby on Rails.

  The passion that led to, and the experience gained from Matt's bring himself from a hobbyist to a professional developer, provides a unique perspective that will be valuable for students of any experience level.
  '''
  intro: 'In this class, you will be introduced to Ruby on Rails, and learn how to make simple applications.'
  description: '''
  Ruby on Rails is a popular open-source framework for creating agile web applications. 'Ruby' refers to the programming language developed in the 90's by Yukihiro "Matz" Matsumoto in Japan. 'on Rails' refers to the web framework that allows Ruby to serve web pages.  Ruby on Rails was created by David Heinemeier Hansson of 37signals.  Their products, such as Basecamp, and the efforts of the Rails Core team lead to Ruby on Rails.

  In this class you will be taught the fundamentals of rails through building a microblogging application: Flitter!  You will learn to leverage RoR's strengths via agile, iterative development to rapidly produce web applications, and be able to extrapolate what you learn from the sample application to build any kind of application you want.
  '''
  sessions: [
    'Session 1: Intro to Rails'
    'Session 2: Humble Beginnings'
    'Session 3: Making Friends'
    'Session 4: Flitter Flies'
  ],
  skillsets: [
    'Programming'
    'Web Development'
    'Javascript'
  ],
  resourceDescription: '''
  To get the most out of this course, you should have general programming knowledge, and some experience with web development (HTML/CSS/Javascript).

  A Ruby primer will be given in the first class, however rudimentary (or greater) knowledge of Ruby would be immensely valuable to students.
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
        Having knowledge of HTML/CSS/Javascript (even if rudamentary) will be a great boon to a student.
        Ruby on Rails actually uses Coffeescript and SCSS by default, so knowledge of these would also
        provide useful.
        
        How to program in at least one programming language (like C, Java, Ruby, or Python).
        '''
  }]
}

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
