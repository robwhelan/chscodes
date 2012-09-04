div '.container', ->
  header '.jumbotron.masthead', ->
    img '#background', src: '/images/codecamp_lab_photo.jpg', style: 'height: 300px;'
    div '.inner', style: 'text-align: left;', ->
      h1 'Calendar'
  div style: 'z-index: 0;', ->
    text '<iframe src="https://www.google.com/calendar/embed?showTitle=0&amp;mode=MONTH&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=charlestoncodes.com_1lvmfkgj4rpth3es5gkcjjan6o%40group.calendar.google.com&amp;color=%23B1440E&amp;ctz=America%2FNew_York" style=" border-width:0 " width="100%" height="600" frameborder="0" scrolling="no"></iframe>'
    #text '<iframe src="https://www.google.com/calendar/embed?showTitle=0&amp;mode=MONTH&amp;height=400&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=charlestoncodes.com_1lvmfkgj4rpth3es5gkcjjan6o%40group.calendar.google.com&amp;color=%23B1440E&amp;ctz=America%2FNew_York" style=" border-width:0 " width="600" height="400" frameborder="0" scrolling="no"></iframe>'
    #text '<iframe src="https://www.google.com/calendar/embed?showTitle=0&amp;mode=MONTH&amp;height=400&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=charlestoncodes.com_1lvmfkgj4rpth3es5gkcjjan6o%40group.calendar.google.com&amp;color=%23B1440E&amp;ctz=America%2FNew_York" style=" border-width:0 " width="300" height="400" frameborder="0" scrolling="no"></iframe>'
