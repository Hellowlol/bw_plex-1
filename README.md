# bw_plex
run bw_plex in a centos container

To run it, pass the docker the following environment variables: username (your plex username), password (your plex password), server (plex server name to monitor), and token (your plex API token).

Run it manually with: docker run -e username=yourplexusername password=yourplexpassword server=yourplexserver token=yourplexapitoken bw_plex
