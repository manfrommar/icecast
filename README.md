# icecast
icecast docker of minimal size

Environment Variables :
<pre>ICECAST_SOURCE_PASSWORD: The unencrypted password used by sources to connect to Icecast. default: hackme
ICECAST_RELAY_PASSWORD: Used in the master server as part of the authentication when a slave requests the list of streams to relay. default: hackme
ICECAST_ADMIN_USER: The username used for all administration functions. default: admin
ICECAST_ADMIN_PASSWORD: The password used for all administration functions. default: hackme
ICECAST_HOSTNAME: This is the DNS name or IP address that will be used for the stream directory lookups or possibily the playlist generation if a Host header is not provided. default: localhost
ICECAST_ADMIN_EMAIL: This should contain the contact details for getting in touch with the server administrator. default: icecast@localhost
ICECAST_LOCATION: This sets the location string for this Icecast instance. default: Earth
ICECAST_MAX_CLIENTS: Total number of concurrent clients supported by the server. default: 100</pre>

Usage :
<pre> first, put icecast.xml in your configdir. Then run the command as follows :

docker run -d -p 8000:8000 --name icecast -v /my/own/logdir:/var/log/icecast -v /my/own/configdir:/etc/icecast dockuru101/icecast:1.0 </pre>
