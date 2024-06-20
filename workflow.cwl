#!usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow


inputs:

outputs:

steps:  
    kneaddata:
    scatter: [input]
        run: cwl/TrimGalore.cwl
        in:
        out: []
    