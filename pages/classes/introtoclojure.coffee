course = {
  startdate: 'Sept 17, 2012'
  name: 'Clojure 101'
  title: 'Clojure 101: Introduction to the Language'
  section: '101'
  imgSponsor: 'http://placehold.it/200x100&text=Sponsor'
  instructor: 'Mark Gunnels, Freelance Programmer'
  instructorPhoto: 'http://placehold.it/200&text=Photo'
  instructorBio: '''
  Mark Gunnels is a freelance programmer with over 17 years of experience in Java, C# (shh, don't tell anyone), PHP, and Ruby.  After fetishizing complexity for many years as a JEE developer, he now enjoys writing applications composed of simple parts with sharp boundaries.  He enjoys sharing what he knows and learning from others.
  '''
  intro: 'In this class, you will learn the basics of the Clojure and how to apply its 
    many powerful features.'
  description: '''
Clojure is a dynamic programming language that is primarily run on the Java Virtual Machine but has implementations on the Common Language Runtime and V8 Javascript engine. It marries the powerful features of a modern LISP with traditional functional ideas of avoiding state and mutable data to create a general purpose language that excels at creating concurrent programs. Some important language characteristics include:

* A read-eval-print-loop similar to Ruby's IRB.
* Tight integration with its host platform. For instance, Clojure can be used to write EJBs or Servlets.
* Higher Order and first class functions.
* Macros that allow you to write programs that write programs 
  '''
  sessions: [
    'Session 1: Introduction to the Clojure ecosystem and syntax'
    'Session 2: Data Structures and Concurrent Programming'
    'Session 3: Multimethods, Protocols, Records and Types'
    'Session 4: Java Interoperability and Macros'
  ],
  skillsets: [
    'Basic Programming'
  ],
  resourceDescription: '''
  To get the most out of this course, you should have general programming knowledge. Knowledge of Java will help but won't be necessary.
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
    div '.span6', -> markdown course.resourceDescription
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
