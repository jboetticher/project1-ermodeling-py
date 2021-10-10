#!/usr/bin/env python
# coding: utf-8

# In[3]:


from runparser_updated.py import *

def main(argv):
    if len(argv) < 2:
        print >> sys.stderr, 'Usage: python skeleton_json_parser.py <path to json files>'
        sys.exit(1)
    # loops over all .json files in the argument
    for f in argv[1:]:
        if isJson(f):
            parseJson(f)
            print ("Success parsing ") + f

if __name__ == '__main__':
    main(sys.argv)


# In[ ]:




