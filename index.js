const http = require('http');

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Merhaba DevOps!\n');
});

server.listen(3000, () => {
  console.log('Sunucu çalışıyor: http://localhost:3000');
});
