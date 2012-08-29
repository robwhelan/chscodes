course = {
  startDate: 'Sept 20, 2012'
  times: '6pm - 8:30pm'
  name: 'Rails-101'
  title: 'Intro to Ruby on Rails'
  section: '101'
  logo: '/images/rails_logo.png'
  imgSponsor: '/images/codecamp_logo.png'
  instructor: 'Matt Scott'
  instructorTitle: 'Applications Analyst'
  instructorCompany: 'MUSC: OBIS'
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
    'Intro to Rails'
    'Humble Beginnings'
    'Making Friends'
    'Flitter Flies'
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
      div '.span1', style: 'padding: 10px;margin-right:20px;', ->
        img src: course.logo, alt: 'AWS EC2'
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
      div '.span2', -> div '.pull-right', -> text """
      <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://charlestoncodes.com/classes/#{course.name}.html" data-text="#{course.name}" data-via="ChsCodes" data-size="large">Tweet</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
      """
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
          th 'Sessions' 
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
