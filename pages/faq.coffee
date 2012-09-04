faqs = []
faqs.push 
  question: 'Who should apply?'
  answer: '''
    CODEcamp is for you!  If you are serious about a career as a developer of web or mobile 
    applications, you have some coding knowledge and want to elevate your skills.  If you 
    believe you have the aptitude to be a web and application software developer and are ready 
    to dive in head first, CODEcamp is the place for you.  You should also refer to the REQURIED 
    RESOURCES notes for each class you are interested in taking.
  '''
faqs.push
  question: 'What is the cost of each class?'
  answer: '''
  The cost of each class is $250.00.  There are a limited number of scholarships available from 
  the Charleston Digital Corridor Scholarship Fund for students from public high schools and 
  colleges in Charleston.
  '''
faqs.push
  question: 'Will I need to bring my computer for the course instruction?'
  answer: '''
  No. CODEcamp’s classroom is equipped with Apple’s iMac computers and the necessary software. 
  In fact, no other electronic devices are permitted during class sessions. We do suggest 
  however that you bring a notebook to take notes and obviously something with which to write.
  '''
faqs.push 
  question: 'Are there any scholarships offered?'
  answer: '''
  There are a limited number of scholarships available from the Charleston Digital Corridor Scholarship Fund 
  for students from public high schools and colleges. For others, all participating companies have 
  agreed to reimburse students for the cost of the class if they are hired by them.
  '''
faqs.push
  question: 'Are there any refunds?'
  answer: '''
  Once you have been accepted for a class and have paid your fee, there are no refunds.
  '''
faqs.push
  question: 'What is the deadline to register for a class?'
  answer: '''
  Most classes will desire registration 2 - 3 days before the first class, but please
  check with each class for confirmation.  It may vary.
  '''
faqs.push
  question: 'Will I receive a grade for the class?'
  answer: '''
  Participants in the class will receive a Pass/Fail grade only.
  '''
faqs.push
  question: 'Will there be homework assignments?'
  answer: '''
  Homework assignments may be given at the discretion of the course instructor. Students are encouraged to do work outside of the classroom to make the most of the instruction.
  '''
faqs.push
  question: 'Can I attend more than one class?'
  answer: 'Yes, subject to approval to the class instructor and availability.'
faqs.push
  question: 'What will I receive at the end of the class?'
  answer: 'Upon completion of the class, all students receive a Certificate of Completion for the respective class provided they have attended all sessions. More importantly, all participants who have successfully completed the class will have the opportunity to meet with representatives from the participating companies who may be interested in hiring.'
faqs.push 
  question: 'Will I have the opportunity to use the classroom off hours?'
  answer: 'Yes. CODEcamp’s classroom is available between 9am – 5pm by appointment only provided no classes are in session.'
faqs.push
  question: 'Where do I park?'
  answer: 'The parking lot at 78 Alexander is open to course participants after 5:30pm.'

div '.container', ->
  header '.jumbotron.masthead', ->
    img '#background', src: '/images/questions-and-answers.jpg', style: 'max-height: 100%;'
    div '.inner', style: 'text-align: left;', ->
      h1 'FAQs'
    hr()
  div 'span7.offset2', ->
    for faq in faqs
      div '.faq', ->
        h3 style: 'color: #535353;', -> faq.question
        p -> faq.answer