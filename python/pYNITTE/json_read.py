from pandas import DataFrame, Series
import pandas as pd
import json

path = 'usagov_bitly_data2012-03-16-1331923249.txt'
records = [json.loads(line) for line in open(path)]
frame = DataFrame(records)
print frame
