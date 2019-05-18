# Requête overpass-turbo
# [out:json][timeout:60]; {{geocodeArea:Paris}}->.paris; way[highway][name](area.paris); out body;>;out skel qt;

ogr2ogr -f postgresql PG:dbname=$USER -nln rues_paris export.geojson
psql -c "copy (select a.name as nom1, b.name as nom2,
  st_x(st_centroid(st_collect(st_intersection(a.wkb_geometry, b.wkb_geometry)))) as lon,
  st_y(st_centroid(st_collect(st_intersection(a.wkb_geometry, b.wkb_geometry)))) as lat
from rues_paris a join rues_paris b on (st_intersects(a.wkb_geometry, b.wkb_geometry) and a.ogc_fid < b.ogc_fid and a.name != b.name)
group by 1,2 order by 1,2)
to STDOUT with (format csv, header true)" > croisements_rues_paris.csv
