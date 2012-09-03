course = {
  startDate: 'Sept 24, 2012'
  times: '3pm - 5:30pm'
  name: 'EC2-101'
  title: 'Elastic Compute Cloud'
  section: '101'
  logo: '/images/aws.png'
  imgSponsor: '/images/codecamp_logo.png'
  instructor: 'P. Barrett Little'
  instructorTitle: 'Senior Programmer/Analyst'
  instructorCompany: 'Jack Russell Software'
  instructorPhoto: '/images/barrett.jpg'
  instructorBio: '''
  Years before Barrett Little became an avid Rubyist, he spent his time cutting is teeth on FreeBSD. His interest in Unix eventually led him from building servers at home to leasing servers at Rackspace and hosting web applications on a small cluster of Linux servers.

  Fast forward to 2009, with 8 years of web development experience under his belt, Barrett spun up his first EC2 server instance. At that time his facination with server technologies was reignited and his obsession with Amazon Web Services began.

  Barrett is currently a Senior Programmer/Analyst at Jack Russell Software. His time is spent primarily writing software to manage the complex AWS infrastructure powering Jack Russell Software.
  '''
  intro: 'In this course you will learn how to create and manage a cloud Linux web server network on Amazon EC2.'
  description: '''
  In the 'Amazon EC2 101' course you will gain a solid understanding of the basics of the Amazon Elastic Compute Cloud. We will begin with an overview of the Amazon EC2 features, instance types, available operating systems and pricing structure. From there we will dive right in and learn about security groups, generating public/private keys, creating server instances and assigning an Elastic IP address to our instance. At the end of the course you will walk away with a Linux web server running on the Amazon Elastic Compute Cloud!
  '''
  sessions: [
    'EC2 overview, features, instance types, operating systems and pricing'
    'Security groups, public/private keys, server instance types, elastic IPs'
    'Install web server software, create an EBS backed AMI'
    'Create a new EC2 server instance with our custom AMI. Generate a server snapshot'
  ],
  skillsets: [
    'Unix/Linux shell experience'
  ],
  resourceDescription: '''
  The 'Amazon EC2 101' course is designed for anyone ready to get their hands dirty with the Amazon Elastic Compute Cloud. From system administrators to developers to hobbyists, the material is accessible to all. We will spend a considerable amount of time in the terminal. Basic shell experience is needed, but you don't have to be a Unix master by any means.
  ''',
  faqs: [{
      question: 'Will I get a statement of accomplishment after completing this class?'
      answer: 'Yes. Students who successfully complete the class will receive a statement of accomplishment signed by the instructor.'
    }, {
      question: 'What are the pre-requisites this class?'
      answer: '''
        You should have an active AWS account for Amazon EC2 and Amazon S3. If you don't have an AWS account, you can sign up for a free account at aws.amazon.com/free.
        '''
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
    img '#background', src: '/images/codecamp_lab_photo.jpg', style: 'height: 350px;'
    header '.jumbotron.masthead', ->
      div '.inner', style: 'text-align: left;', ->
        div '.span1', style: 'padding: 10px;margin-right:20px;', ->
          img src: course.logo, alt: course.title
        div '.span9', ->
          h1 course.title # + ' - ' + course.section
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
        <div style="width:100%; text-align:left;" ><iframe  src="http://www.eventbrite.com/tickets-external?eid=4253337848&ref=etckt" frameborder="0" height="192" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com/r/etckt">Event Registration Online</a><span style="color:#ddd;"> for </span><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://http://charlestoncodes-cloud101.eventbrite.com?ref=etckt">Cloud Server Management</a> <span style="color:#ddd;">powered by</span> <a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com?ref=etckt">Eventbrite</a></div></div>
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
