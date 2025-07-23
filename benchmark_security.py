#!/usr/bin/env python3

# Script to benchmark security.

"""
Benchmark security.
"""

import argparse
import importlib
import os
import sys
import platform

from json import loads

sys.path.append(
    os.path.join(os.path.abspath(os.path.dirname(__file__)), 'pylib')
)

from embench_core import check_python_version
from embench_core import log
from embench_core import gp
from embench_core import setup_logging
from embench_core import log_args
from embench_core import find_benchmarks
from embench_core import log_benchmarks
from embench_core import embench_stats
from embench_core import output_format

def main():
    # TODO: See benchmark_speed.py and benchmark_size.py for template
    pass

# Make sure we have new enough Python and only run if this is the main package
check_python_version(3, 6)
if __name__ == '__main__':
    sys.exit(main())
