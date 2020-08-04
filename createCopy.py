#!/usr/bin/env python3

import json
import os
import sys

i = " ".join(sys.argv[1:])
i = i.replace("'", '"')
j = json.loads(i)
print(j)
x = [ ('copy', a) for a in j ]
print(x)