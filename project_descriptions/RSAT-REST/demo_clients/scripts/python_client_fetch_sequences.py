import requests
import json

rsat_server = "http://rsat-tagc.univ-mrs.fr/rest/fetch-sequences"

######### EXAMPLE FOR SENDING FORM-DATA INCLUDING FILES AND OTHER TYPES OF DATA #######
data = {'genome':'mm9', 'header_format':'galaxy', 'u':'http://rsat-tagc.univ-mrs.fr/rsat/demo_files/fetch-sequences_Schmidt_2011_mm9_CEBPA_SWEMBL_R0.12_702peaks.bed'}
#files = {'i': open('/home/rsat/rsat/public_html/demo_files/fetch-sequences_Schmidt_2011_mm9_CEBPA_SWEMBL_R0.12_702peaks.bed', 'rb')}
headers = {'Accept':'text/plain'}
r = requests.Request('POST', rsat_server, data=data, headers=headers).prepare()
#r = requests.Request('POST', rsat_server, data=data, files=files, headers=headers).prepare()
s = requests.Session()
resp = s.send(r)
print(resp.text)
######## END EXAMPLE



