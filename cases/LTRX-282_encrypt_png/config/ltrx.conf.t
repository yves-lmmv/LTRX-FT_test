#
# Configuration file for the LTRX
#

# Path to media and SDP files
media-path = %ROOT%/medias
image-path = %ROOT%/medias
sdp-file-path = %ROOT%/medias/sdp
sdp-file-overwrite = true

# Path and filename of the repository for media characteristics
media-identification =  %ROOT%/config/mi.xml
enable-media-identification-cache = true

# Logger
logconfig = %ROOT%/config/logconfig.xml

# SDP HTTP port
sdp-http-port = 8090

# SDP HTML template
sdp-html-template = %ROOT%/config/sdpt.html

# Path where the services description will are located
services-path = %ROOT%/services

# Run as unpriviledged user
runtime-gid =
runtime-uid =

# Bind server to a specific IP address
listen-address = 0.0.0.0

# RTP/MPEG-2 TS initial timeout (also used by MediaInfo)
rtp-initial-timeout = 1

# RTP/MPEG-2 TS active timeout
rtp-active-timeout = 1

# Time to live for multicast TTL (0 leaves system default. Max 255)
multicast-ttl = 0

# Database
db-services-url-list = mongo://localhost:27017, mongo://localhost:27019
db-services-replica-set = replica
db-services-poll-period = 1
group-id = default
cluster-id = default

# Timeout for service expiry
ha-sentinel-period = 10

db-services-output-keepalive-period = 30

save-sessions = true

