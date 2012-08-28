course = {
  startdate: 'Sept 24, 2012'
  name: 'Amazon EC2 101'
  title: 'Amazon Elastic Compute Cloud 101'
  section: '101'
  imgSponsor: 'http://placehold.it/200x100&text=Sponsor'
  instructor: 'P. Barrett Little, Senior Programmer/Analyst at Jack Russell Software'
  instructorPhoto: 'http://farm8.staticflickr.com/7055/6896883287_f6675ba9a0_q_d.jpg'
  instructorBio: '''
  Years before Barrett Little became an avid Rubyist, he spent his time cutting is teeth on FreeBSD. His interest in Unix eventually led him from building servers at home to leasing servers at Rackspace and hosting web applications on a small cluser of Linux servers.

  Fast forward to 2009, with 8 years of web development experience under his belt, Barrett spun up his first EC2 server instance. At that time his facination with server technologies was reignited and his obsession with Amazon Web Services began.

  Barrett is currently a Senior Programmer/Analyst at Jack Russell Software. His time is spent primarily writing software to manage the complex AWS infrastructure powering Jack Russell Software.
  '''
  intro: 'In this course you will learn how to create and manage a cloud Linux web server network on Amazon EC2.'
  description: '''
  In the 'Amazon EC2 101' course you will gain a solid understanding of the basics of the Amazon Elastic Compute Cloud. We will begin with an overview of the Amazon EC2 features, instance types, available operating systems and pricing structure. From there we will dive right in and learn about security groups, generating public/private keys, creating server instances and assigning an Elastic IP address to our instance. At the end of the course you will walk away with a Linux web server running on the Amazon Elastic Compute Cloud!
  '''
  sessions: [
    'Session 1: EC2 overview, features, instance types, operating systems and pricing'
    'Session 2: Security groups, public/private keys, server instance types, elastic IPs'
    'Session 3: Install web server software, create an EBS backed AMI'
    'Session 4: Create a new EC2 server instance with our custom AMI. Generate a server snapshot'
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
