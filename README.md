MongoDB Image

Uses /data directory for moving parts, binds to localhost by default but can be overriden by command-line parameters of mongod

Typical usage:
docker run -it --rm -v /data/mongod:/data --net=host scf37/mongod
