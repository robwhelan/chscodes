course = {
  startDate: 'Sept 20, 2012'
  times: '6pm - 8:30pm'
  name: 'jQuery-101'
  title: 'jQuery: All the goodies!'
  section: '101'
  logo: '/images/jquery_logo.png'
  imgSponsor: '/images/codecamp_logo.png'
  instructor: 'Nick Bucciarelli'
  instructorTitle: 'Programmer/Analyst'
  instructorCompany: 'Jack Russell Software'
  instructorPhoto: '/images/instructor_nick_bucciarelli_small.jpg'
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
    'What is jQuery?'
    'Making things happen'
    'Widgets and Interactions'
    'jQuery Mobile'
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
      div '.well.span2', style: 'background: #fff;padding: 10px;margin-right:20px;', ->
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
        text '''
        <div style="width:100%; text-align:left;" ><iframe  src="http://www.eventbrite.com/tickets-external?eid=4253311770&ref=etckt" frameborder="0" height="192" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com/r/etckt">Event management</a><span style="color:#ddd;"> for </span><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://http://charlestoncodes-jquery101.eventbrite.com?ref=etckt">JQuery: All the Goodies!</a> <span style="color:#ddd;">powered by</span> <a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com?ref=etckt">Eventbrite</a></div></div>
        '''

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
      p ->
        b 'Cost: '
        text '$250'

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
