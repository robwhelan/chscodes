course = {
  startDate: 'Wed, Sept 19, 2012'
  times: '3pm - 5:30pm'
  name: 'NodeJs-101'
  title: 'Intro to NodeJs'
  section: '101'
  logo: '/images/nodejs-dark.png'
  imgSponsor: '/images/jackhq-logo.png'
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
  }],
  eventbrite: '4253291710'
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
          h1 course.title 
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
          tr -> td session
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
          tr -> td skill
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
