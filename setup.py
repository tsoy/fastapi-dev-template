from setuptools import setup, find_packages

setup(
    name='app',
    pacakges=find_packages(where='.'),
    package_dir={'': '.'}
)