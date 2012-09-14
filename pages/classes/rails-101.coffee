course = {
  startDate: 'Wed, Oct 17, 2012'
  times: '6pm - 8:30pm'
  name: 'Rails-101'
  title: 'Intro to Ruby on Rails'
  section: '101'
  logo: '/images/rails_logo.png'
  imgSponsor: '/images/codecamp_logo.png'
  instructor: 'Matt Scott'
  instructorTitle: 'Applications Analyst'
  instructorCompany: 'MUSC: OBIS'
  instructorPhoto: '/images/matt.jpg'
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
  }],
  eventbrite: '4120249778'
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
        li -> a href: '#faq', 'FAQ'

div '.container', ->
  div '#top.row', ->
    img '#background', src: '/images/codecamp_lab_photo.jpg', style: 'left: 200px; top:160px;max-height: 85%;' #style: 'height: 300px;'
    header '.jumbotron.masthead', ->
      div '.inner', style: 'text-align: left;', ->
        div '.span1', style: 'padding: 10px;margin-right:20px;', ->
          img src: course.logo, alt: course.title
        div '.span9', ->
          h1 course.title # + ' - ' + course.section
          p course.intro

    div '.span5', ->
      div style: 'text-align: center;padding: 10px;', -> 
        img '.instructor-img', src: course.instructorPhoto
        h1 course.instructor
        a '#aboutbtn.btn.btn-primary', href: '#instructor', 'About the Instructor' 
    div '.span6', style: 'text-align: center', ->
      img src: course.imgSponsor
      div style: 'margin-top: 20px;', ->
        text """
        <div style="width:100%; text-align:left;" ><iframe  src="http://www.eventbrite.com/tickets-external?eid=#{course.eventbrite}&ref=etckt" frameborder="0" height="192" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com/r/etckt">Online Ticketing</a><span style="color:#ddd;"> for </span><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://http://www.eventbrite.com/event/4253327818?ref=etckt">Web Basics</a> <span style="color:#ddd;">powered by</span> <a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com?ref=etckt">Eventbrite</a></div></div>
        """

  div '.row', style: 'background: white;border-top: 1px solid #FFF;padding-top: 20px;', ->
    div '.span4', ->
      p ->
        b 'Starts: '
        text course.startDate
      p ->
        b 'Times: '
        text course.times
      p ->
        b 'Workload: '
        text '2.5 hours/week'
    div '.span4', ->
      p ->
        b 'Duration: '
        text '4 weeks long'
      p ->
        b 'Cost: '
        text '$250'

    div '.span3', ->
      div '.span2', -> div '.pull-right', -> text """
      <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://charlestoncodes.com/classes/#{course.name}.html" data-text="#{course.name}" data-via="ChsCodes" data-size="large">Tweet</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
      """
      # div '.span2', -> text '''  <!-- Place this tag where you want the +1 button to render. -->
      #   <div class="g-plusone" data-annotation="inline" data-width="300"></div>
      # 
      #   <!-- Place this tag after the last +1 button tag. -->
      #   <script type="text/javascript">
      #     (function() {
      #       var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
      #       po.src = 'https://apis.google.com/js/plusone.js';
      #       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
      #     })();
      #   </script>
      # '''
      # div '.span2', -> text '''
      # <div class="fb-like" data-send="true" data-width="450" data-show-faces="true"></div>
      # '''
  #hr()
  div '#about.row',  ->
    div '.span5', ->
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
  div '#instructor.row', ->
    h2 style: 'margin-bottom: 40px;', 'About the Instructor'
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
  div '#resources.row', ->
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
  div '#faq.row', ->
    div -> h2 'Frequently Asked Questions'
    div '.span6.offset2', style: 'margin-top: 50px;', ->
      ul ->
        for faq in course.faqs
          li ->
            h3 faq.question
            br()
            p faq.answer
            br()
