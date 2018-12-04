# bw_plex
run bw_plex in a centos container

To run it, pass the docker the following environment variables: url (your plex server ip/port), and token (your plex API token).

Run it manually with: docker run -e --url="http://192.168.1.112:32400" token=yourplexapitoken mccloud/bw_plex

Obviously, under url you'll place your server IP/port.  
