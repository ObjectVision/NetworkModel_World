import osmnx as ox
import fiona
 
# place = "Piedmont, California, USA"
# G = ox.graph_from_place(place, network_type="drive")
#NL = fiona.open("data/gadm41_NLD_shp/gadm41_NLD_0.shp")

# NL_BB = (3.360782249000181, 50.723491668000065, 7.2270951260000516, 53.55458500000009)
# NL = ox.graph_from_bbox(53.55458500000009, 50.723491668000065, 7.2270951260000516, 3.360782249000181, network_type = "all")


# NL = ox.graph_from_xml("data/map.osm", False, True, True)


NL = ox.features_from_xml("data/map.osm", tags={'highway':'track'})
for col in NL.columns:
    if any(isinstance(val, list) for val in NL[col]):
        NL[col] = NL[col].apply(lambda x: ' '.join(str(x)))


NL.to_file("C:/GeoDMS/SourceData/OSM/OSMnx/Netherlands2.gpkg", driver="GPKG")

# p = ox.geocode_to_gdf("Dinajpur,Bangladesh")
# plot = p.boundary.plot()



# building = ox.geometries_from_place("Amsterdam,Netherlands", tags = {"building":True})
# building.plot()


# ox.config(use_cache=True, log_console=True)
# ox.graph_from_place('Netherlands', network_type='drive', which_result=2)
# ox.save_graph_geopackage(NL, filepath="C:/GeoDMS/SourceData/OSM/OSMnx/Netherlands2.gpkg")

##ata/gadm41_NLD_shp/gadm41_NLD_0.shp