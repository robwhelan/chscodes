var http = require('http'),
  filed = require('filed'),
  url = require('url'),
  request = require('request');
  
server = http.createServer(function(req, resp){
  var pathname = url.parse(req.url).pathname;
  if (pathname === '/') pathname = '/index.html';
  if (pathname === '/contact' && req.method === 'POST') {
    var body = '';
    req.on('data', function (data) {
      body += data;
    });
    req.on('end', function () {
      console.log(body);
      request.post('http://codecamp:rocks@chscodesq.herokuapp.com/contact', { json: true, body: body }, function(e,r,b){
        console.log(b);
        resp.writeHead(200, {'Content-Type': 'application/json'});
        resp.end(JSON.stringify(b));
      });
    });
    // req.pipe(
    //   request.post('http://codecamp:rocks@chscodesq.herokuapp.com/contact')
    // ).pipe(resp);
  } else {
    filed(__dirname + "/gen" + pathname).pipe(resp);
  }
});

server.listen(3000, function() {
  console.log('Listening on Port 3000...');
  console.log('CTRL-C to quit');
})