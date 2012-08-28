course = {
  startdate: 'Sept 18, 2012'
  name: 'Website Basics'
  title: 'Website Basics: Intro to HTML and CSS'
  section: '101'
  imgSponsor: 'http://placehold.it/200x100&text=Sponsor'
  instructor: 'Joe Bryan, President/Founder at sineLABS'
  instructorPhoto: 'http://placehold.it/200&text=Photo'
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
    'Session 1: Some web history, HTML syntax, most common HTML tags'
    'Session 2: HTML in depth: more tags, attributes, inline v. block elements'
    'Session 3: CSS introduction: basic selectors & styles'
    'Session 4: CSS advanced selectors, CSS layout, CSS3'
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
    div '.span6', ->
      markdown course.resourceDescription
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
