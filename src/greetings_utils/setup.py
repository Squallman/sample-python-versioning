#!/usr/bin/env python
from setuptools import find_packages, setup

with open("README.md", "r") as fh:
    README_CONTENT = fh.read()

setup(
    name="sample-python-versioning",
    version_format='v0.1.0',
    # version_format='{tag}-{gitsha}',
    # setup_requires=['setuptools-git-version'],
    author="Serhii Shepel",
    author_email="serhiy.shepel@gmail.com",
    description="Sample application",
    long_description=README_CONTENT,
    long_description_content_type="text/markdown",
    url="https://github.com/Squallman/sample-python-versioning",
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
    install_requires=['python-dateutil==2.8.1', 'boto3==1.11.8'],
)