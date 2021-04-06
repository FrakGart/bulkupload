# bulkupload
Forked from https://svn.openstreetmap.org/applications/utils/import/bulkupload/?p=34681

Also see https://github.com/grigory-rechistov/osm-bulk-upload

Two important gotchas when using:
1. All ids have to be unique. You can't have the same id in different classes of OSM objects. Use the osmium renumber utility beforehand.
2. Smart sort does not know about relations refering to other relations so won't know which order to put them in.
