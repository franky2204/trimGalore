#!usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow


inputs:

outputs:

steps:  
    kneaddata:
        run: cwl/TrimGalore.cwl
        in:
        out: []