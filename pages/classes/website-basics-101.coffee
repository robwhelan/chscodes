course = {
  startDate: 'Tue, Oct 16, 2012'
  times: '6pm - 8:30pm'
  name: 'Website-Basics-101'
  title: 'Web Basics: HTML/CSS'
  section: '101'
  logo: '/images/html-css-javascript.png'
  imgSponsor: '/images/sinelabs_official_logo.png'
  instructor: 'Joe Bryan, President/Founder at sineLABS'
  instructorTitle: 'President/Founder'
  instructorCompany: 'sineLABS'
  
  instructorPhoto: '/images/instructor_joe_bryan_small.jpg'
  instructorBio: '''
  Joe Bryan has more than 20 years of experience in business and technology leadership and is currently the President and Founder of sineLABS, an e-commerce software development firm specializing in e-commerce site and application development primarily on the <a href="http://www.shopify.com">Shopify</a> platform. sineLABS is the author of three “apps” on the Shopify app store created using Python’s powerful and popular web framework, Django.

  Prior to this, in 2002 Mr. Bryan cofounded Sans Locus, a web application and design company in Charleston, South Carolina. At Sans Locus, Bryan led the development of several advanced web application projects for clients such as Cingular Wireless (now AT&T Wireless), BBC, and Morgan Stanley. Additionally, Bryan authored a unique content management system designed to improve and speed up the web development process for both developers and clients. Sans Locus and the CMS were later acquired by a multi-national digital production firm in 2007.

  Mr. Bryan originally relocated to Charleston, SC in 1996 to work for Blackbaud Inc. (NASDAQ: BLKB) from his native city Asheville, NC.
  '''
  intro: 'In this class, you will learn the basics of HTML and CSS from scratch.'
  description: '''
  Web pages and sites at their most basic level are constructed of HTML (HyperText Markup Language) and CSS (Cascading Style Sheets). If a web page is a skyscraper, HTML is the structural ironwork, and concrete base while CSS is the external skin that wraps and encloses the structure. Start here in this class if you are a clean slate with web development!
  '''
  sessions: [
    'Some web history, HTML syntax, most common HTML tags'
    'HTML in depth: more tags, attributes, inline v. block elements'
    'CSS introduction: basic selectors & styles'
    'CSS advanced selectors, CSS layout, CSS3'
  ],
  skillsets: [
    'Basic usage of Mac OS X operating system'
    'Basic use of a web browser'
    'Determination!'
  ],
  resourceDescription: '''
  Anyone who has ever wanted to gain a better understanding of how webpages and websites are constructed, or possibly even launch a new career in the vast field of web development, this course is for you. With virtually no prerequisites, this course is designed for even those starting from square one.
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
        Obviously the more you already know the better, but this class assumes only that you 
        know how to use a computer and a web browser to get rolling. Clearly we will be covering
        topics that go much deeper than a lay-understanding of website construction, so you 
        should really come in with a desire and determination to understand the nuts and bolts 
        and get your hands dirty writing actual website "code!"
        '''
  }],
  eventbrite: '4253327818'
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
