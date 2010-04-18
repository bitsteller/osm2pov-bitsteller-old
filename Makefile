niedersachsen.osm:
	rm -f niedersachsen.osm.bz2
	wget http://download.geofabrik.de/osm/europe/germany/niedersachsen.osm.bz2
	bunzip2 niedersachsen.osm.bz2

mecklenburg-vorpommern.osm:
	rm -f mecklenburg-vorpommern.osm.bz2
	wget http://download.geofabrik.de/osm/europe/germany/mecklenburg-vorpommern.osm.bz2
	bunzip2 mecklenburg-vorpommern.osm.bz2
	
berlin.osm:
	rm -f berlin.osm.bz2
	wget http://download.geofabrik.de/osm/europe/germany/berlin.osm.bz2
	bunzip2 berlin.osm.bz2

bremen.osm:
	rm -f bremen.osm.bz2
	wget http://download.geofabrik.de/osm/europe/germany/bremen.osm.bz2
	bunzip2 bremen.osm.bz2
	
hamburg.osm:
	rm -f hamburg.osm.bz2
	wget http://download.geofabrik.de/osm/europe/germany/hamburg.osm.bz2
	bunzip2 hamburg.osm.bz2



#Braunschweig
bs.osm: niedersachsen.osm
	osmosis --read-xml file="niedersachsen.osm" --bounding-box top=52.3073 left=10.4873 bottom=52.2275 right=10.5535 --write-xml file="bs.osm"

bs.pov: bs.osm
	osm2pov-0.1.2/osm2pov bs.osm bs.pov
	
bs: bs.pov
	povray +W8000 +H8000 +B100 -D +A bs.pov
	mv bs.png output/bs.png	
	
#Hannover
h.osm: niedersachsen.osm
	osmosis --read-xml file="niedersachsen.osm" --bounding-box top=52.4005 left=9.6898 bottom=52.3386 right=9.7585 --write-xml file="h.osm"

h.pov: h.osm
	osm2pov-0.1.2/osm2pov h.osm h.pov
	
h: h.pov
	povray +W5000 +H5000 +B100 -D +A h.pov
		mv h.png output/h.png	
	
#Oyten
oyten.osm: niedersachsen.osm
	osmosis --read-xml file="niedersachsen.osm" --bounding-box top=53.10 left=8.98 bottom=53.00 right=9.06 --write-xml file="oyten.osm"

oyten.pov: oyten.osm
	osm2pov-0.1.2/osm2pov oyten.osm oyten.pov
	
oyten: oyten.pov
	povray +W6000 +H6000 +B100 -D +A oyten.pov
	mv oyten.png output/oyten.png
	
#Uetze
uetze.osm: niedersachsen.osm
	osmosis --read-xml file="niedersachsen.osm" --bounding-box top=52.4871 left=10.1159 bottom=52.4013 right=10.2735 --write-xml file="uetze.osm"

uetze.pov: uetze.osm
	osm2pov-0.1.2/osm2pov uetze.osm uetze.pov
	
uetze: uetze.pov
	povray +W6000 +H6000 +B100 -D +A uetze.pov
	mv uetze.png output/uetze.png	
	
#Warnemünde
warnemuende.osm: mecklenburg-vorpommern.osm
	osmosis --read-xml file="mecklenburg-vorpommern.osm" --bounding-box top=54.2025 left=12.015 bottom=54.111 right=12.1523 --write-xml file="warnemuende.osm"

warnemuende.pov: warnemuende.osm
	osm2pov-0.1.2/osm2pov warnemuende.osm warnemuende.pov
	
warnemuende: warnemuende.pov
	povray +W8000 +H8000 +B100 -D +A warnemuende.pov
	mv warnemuende.png output/warnemuende.png	
	
#Rostock
hro.osm: mecklenburg-vorpommern.osm
	osmosis --read-xml file="mecklenburg-vorpommern.osm" --bounding-box top=54.1305 left=12.0341 bottom=54.0542 right=12.2037 --write-xml file="hro.osm"

hro.pov: hro.osm
	osm2pov-0.1.2/osm2pov hro.osm hro.pov
	
hro: hro.pov
	povray +W8000 +H8000 +B100 -D +A hro.pov
	mv hro.png output/hro.png	
	
#Berlin
b.osm: berlin.osm
	osmosis --read-xml file="berlin.osm" --bounding-box top=52.5463 left=13.3476 bottom=52.484 right=13.4382 --write-xml file="b.osm"

b.pov: b.osm
	osm2pov-0.1.2/osm2pov b.osm b.pov
	
b: b.pov
	povray +W8000 +H8000 +B100 -D +A b.pov
	mv b.png output/b.png	
	
#Bremen
hb.osm: bremen.osm
	osmosis --read-xml file="bremen.osm" --bounding-box top=53.1219 left=8.78 bottom=53.0 right=8.88 --write-xml file="hb.osm"

hb.pov: hb.osm
	osm2pov-0.1.2/osm2pov hb.osm hb.pov
	
hb: hb.pov
	povray +W8000 +H8000 +B100 -D +A hb.pov
	mv hb.png output/hb.png	
	
#Hamburg
hh.osm: hamburg.osm
	osmosis --read-xml file="hamburg.osm" --bounding-box top=53.5793 left=9.95 bottom=53.5232 right=10.03 --write-xml file="hh.osm"

hh.pov: hh.osm
	osm2pov-0.1.2/osm2pov hh.osm hh.pov
	
hh: hh.pov
	povray +W8000 +H8000 +B100 -D +A hh.pov
	mv hh.png output/hh.png	
	
	
clean:
	rm -f *.pov
	rm -f *.osm
