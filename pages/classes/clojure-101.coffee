course = {
  startDate: 'Sept 20, 2012'
  times: '3pm - 5:30pm'
  name: 'Clojure 101'
  title: 'Introduction to Clojure'
  section: '101'
  logo: '/images/clojure-logo10.png'
  imgSponsor: '/images/codecamp_logo.png'
  instructor: 'Mark Gunnels'
  instructorTitle: 'Freelance Programmer'
  instructorCompany: 'Self-Employed'
  instructorPhoto: '/images/mark.jpg'
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
    'Introduction to the Clojure ecosystem and syntax'
    'Data Structures and Concurrent Programming'
    'Multimethods, Protocols, Records and Types'
    'Java Interoperability and Macros'
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

text '''
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
'''

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
  div '#top.row', ->
    div '.hero-unit', style: 'margin: 20px 0 20px 0;', ->
      div '.span1', style: 'padding: 10px;height: 75px;', ->
        img style: 'max-height: 100%', src: course.logo, alt: 'AWS EC2'
      h1 course.title + ' - ' + course.section
      p course.intro
    
    div '.span5', ->
      div style: 'text-align: center;padding: 10px;', -> img src: course.instructorPhoto
      table '.table.table-bordered', ->
        tr ->
          th 'Instructor'
          td course.instructor
        tr ->
          th 'Title'
          td course.instructorTitle
        tr ->
          th 'Company'
          td course.instructorCompany
    div '.span6', style: 'text-align: center', ->
      img src: course.imgSponsor
      div style: 'margin-top: 20px;', ->
        button '.btn.btn-primary.btn-large', 'Sign Up'
        text '&nbsp;&nbsp;&nbsp;'
        button '.btn.btn-primary.btn-large', 'Questions'

  hr()
  div '.row', ->
    div '.span4', ->
      p ->
        b 'Starts On: '
        text course.startDate + ' (4 weeks long)'
      p ->
        b 'Times: '
        text course.times
      p ->
        b 'Workload: '
        text '2.5 hours/week'
    div '.span7', ->
      div '.span2', -> div '.pull-right', -> text '<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://charlestoncodes.com/classes/ec2-101.html" data-text="Intro to Clojure!" data-via="ChsCodes" data-size="large">Tweet</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>'
      div '.span2', -> text '''  <!-- Place this tag where you want the +1 button to render. -->
        <div class="g-plusone" data-annotation="inline" data-width="300"></div>

        <!-- Place this tag after the last +1 button tag. -->
        <script type="text/javascript">
          (function() {
            var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
            po.src = 'https://apis.google.com/js/plusone.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
          })();
        </script>
      '''
      div '.span2', -> text '''
      <div class="fb-like" data-send="true" data-width="450" data-show-faces="true"></div>
      '''
  hr()
  div '.row', ->
    div '#about.span5', ->
      h2 style: 'margin-bottom: 40px;', 'About the Course'
      markdown course.description
    div '.span6', ->
      h3 'Course Outline'
      table '.table.table-bordered', style: 'margin-top: 50px;',  ->
        tr -> 
          th 'Sessons' 
        for session in course.sessions
          tr -> 
            td session
  hr()
  div '.row', ->
    h2 '#instructor', style: 'margin-bottom: 40px;', 'About the Instructor'
    div '.span4', ->
      div style: 'text-align: center;padding: 10px;', -> img src: course.instructorPhoto
      table '.table.table-bordered', ->
        tr ->
          th 'Instructor'
          td course.instructor
        tr ->
          th 'Title'
          td course.instructorTitle
        tr ->
          th 'Company'
          td course.instructorCompany

    div '.span6', -> markdown course.instructorBio
  hr '#resources', ''
  div '.row', ->
    div '.span6', -> 
      h2 style: 'margin-bottom: 40px;', 'Required Resources'
      markdown course.resourceDescription

    div '.span6', ->
      h3 style: 'margin-bottom: 50px', 'Skillsets'
      table '.table.table-bordered', ->
        for skill in course.skillsets
          tr -> 
            td skill
  hr()
  div '.row', ->
    div '#faq', -> h2 'Frequently Asked Questions'
    div '.span6.offset2', style: 'margin-top: 50px;', ->
      ul ->
        for faq in course.faqs
          li ->
            h3 faq.question
            br()
            p faq.answer
            br()
