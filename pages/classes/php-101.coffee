course = {
  startDate: 'Mon, Oct 15, 2012'
  times: '6pm - 8:30pm'
  name: 'PHP-101'
  title: 'PHP Hypertext Processor'
  section: '101'
  logo: '/images/php-med-trans.png'
  imgSponsor: '/images/blueacorn.png'
  instructor: 'Brys Sepulveda'
  instructorTitle: 'Systems Architect'
  instructorCompany: 'Blue Acorn'
  instructorPhoto: '/images/brys_sepulveda.jpg'
  instructorBio: '''
  Brys Sepulveda came out of the womb with a laptop in hand. Arguably from the last generation that existed in a time before the Internet, Brys started his fascination with computers as a toddler playing with his older brother's gaming consoles. The magic and wonder instilled in him from those devices still drives him today to pursue the amazing world of computers. With a passion for software engineering unparalleled in the industry, Brys has always striven to write elegant, efficient, and maintainable code. He strongly holds the belief that programming is an artisan craft much like clock making or carpentry. It's an art form that takes nothing but yourself and logic and creates something functional and beautiful. Having graduated from CofC with a BS in Computer Science in 2011, Brys is fresh off the boat in the work force. But, in just one year at Blue Acorn hes gone from being an Intern to a Systems Architect and heading a team of 6 as a technical lead. Brys teaches everyday as he lives and breathes PHP. As a technical lead, he is often in demand for solving problems and providing solutions. He has taught numerous internal classes at Blue Acorn both in the basics of PHP and advanced Object Oriented Design concepts.
  '''
  intro: 'In this class, students will start the journey to learning the language that drives the internet!'
  description: '''
  PHP runs more than 75% of all websites on the internet placing it far in front of the pack. Designed to be easy, portable, flexible, and maintainable, PHP stands at the cutting edge of web technologies. From Facebook to Wikipedia to the ever popular WordPress blog, all of these are written in PHP. Come learn what all the hype is about and what PHP can hold in store for you.
  '''
  sessions: [
    'Syntax, Semantics, and Separation'
    'Boistful Blogging'
    'Actionable Administration'
    'Integral Integrations'
  ],
  skillsets: [
    'Problem Solving Skills'
    'Basic Programming'
    'Basic OOD (Object Oriented Development)'
  'HTML'
  ],
  resourceDescription: '''
  In order to excel in this course, previous exposure to any programming language is highly recommended. As an introduction to PHP, this course's main focus is to get you acclimated to the gotchas of PHP and the power that PHP gives you. With such a huge standard library, PHP comes so fully loaded that we could never cover everything so the topics will be as expansive as possible. Bring a willingness to learn and a good attitude. Nothing is more required for this course than the want and drive to learn and improve. More advanced topics will be covered in PHP 102.
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
  eventbrite: '4253359914'
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
