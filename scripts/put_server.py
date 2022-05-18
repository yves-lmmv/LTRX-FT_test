#!/usr/bin/env python

import BaseHTTPServer
import time

HOST_NAME = "localhost"
PORT_NUMBER = 9090

class PutHandler(BaseHTTPServer.BaseHTTPRequestHandler):
    def do_HEAD(self):
        s.send_response(200)
    def do_PUT(self):
        print "Received put"
        print self.headers
	if 'Expect' in self.headers and self.headers['Expect'] == '100-continue':
            self.send_response(100)
            self.end_headers()
        length = int(self.headers['Content-Length'])
	print "Length " + str(length)
        f = open('medias/outputs/output.jpg','wb')
        content = self.rfile.read(length)
        f.write(content)
        f.close()
        self.send_response(200)

if __name__ == '__main__':
    server_class = BaseHTTPServer.HTTPServer
    httpd = server_class((HOST_NAME, PORT_NUMBER), PutHandler)
    httpd.serve_forever()
