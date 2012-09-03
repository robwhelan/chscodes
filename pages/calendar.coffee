div '.container', ->
  img '#background', src: '/images/codecamp_lab_photo.jpg', style: 'height: 300px;'
  header '.jumbotron.masthead', ->
    div '.inner', style: 'text-align: left;', ->
      h1 'Calendar'
  div '.offset1', style: 'z-index: 0;', ->
    text '<iframe src="https://www.google.com/calendar/embed?showTitle=0&amp;mode=MONTH&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=charlestoncodes.com_1lvmfkgj4rpth3es5gkcjjan6o%40group.calendar.google.com&amp;color=%23B1440E&amp;ctz=America%2FNew_York" style=" border-width:0 " width="800" height="600" frameborder="0" scrolling="no"></iframe>'