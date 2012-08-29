course = {
  startdate: 'Sept 19, 2012'
  times: '3pm - 5:30pm'
  name: 'NodeJs-101'
  title: 'Getting Started with NodeJs'
  section: '101'
  logo: '/images/nodejs-dark.png'
  imgSponsor: '/images/codecamp_logo.png'
  instructor: 'Tom Wilson'
  instructorTitle: 'Chief Technologist'
  instructorCompany: 'Jack Russell Software'
  instructorPhoto: '/images/instructor_tom_wilson_small.jpg'
  instructorBio: '''
  Tom Wilson started hacking on computers at the early age of 9 years old during the days of the Apple II and Commodore 64.  Tom has worked as a Software Developer since the early 90's.  When the buzz was all about wysiwyg and client/server software. 

  Focused on Healthcare Application Development for most of his career, Tom has been building large scale and complex healthcare web applications for over a decade. Tom Wilson believes that web application development is one of the most complicated professions on the planet.

  Tom loves to teach as much as he loves to learn. Everywhere he has worked, he has always focused on improving the developer's skills as much as delivering quality software.  Tom has given many talks and workshops, and is an active member in the Charleston Software Development Community.  He leads the Charleston Ruby Group and is the founder of the Charleston Javascript Group.

  Toms' knowledge, experience and passion provide a wealth of value for anyone interested in the craft of software development.
  '''
  intro: 'In this class, you will learn what NodeJs is, and how to use its strengths.'
  description: '''
  NodeJs is the technology of 2012 and it is everywhere, from Microsoft to Startups.  This is the hottest technology framework for the web since RubyonRails.  Take this class and find out why.  In just four weeks, you will learn what nodejs is, and how to use node to build File Servers, Chat Servers, and a Micro Blog site.  These application are simple, but will give you a full overview of NodeJs and what you can do with this powerful new technology.
  '''
  sessions: [
    'What is NodeJs?'
    'Node Package Manaager'
    'Socket.IO and Events'
    'Full Stack NodeJs - FlatIronJS'
  ],
  skillsets: [
    'Programming'
    'Web Development'
    'Javascript'
  ],
  resourceDescription: '''
  To get the most out of this course, you should have general programming knowledge, have experience working with web development technologies, like php, django, rails.

  Experience with Javascript.  This is an introductory course into nodejs, so we will not cover deep nodejs topics, we will touch on some core principals and learn how to use the framework.  If your interested in more advanced topics look at NodeJs Part 2.
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
