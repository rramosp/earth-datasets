import pandas as pd
import geopandas as gpd
import numpy as np
import hashlib


def get_gdf(shape_list, crs):
    
    r = pd.DataFrame([shape_list], index=['geometry']).T
    r = gpd.GeoDataFrame(r, crs=crs)
    return r

def get_region_hash(region):
    """
    region: a shapely geometry
    returns a hash string for region using its coordinates
    """
    s = str(np.r_[region.envelope.boundary.coords].round(5))
    k = int(hashlib.sha256(s.encode('utf-8')).hexdigest(), 16) % 10**15
    k = str(hex(k))[2:].zfill(13)
    return k
