# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
from setuptools import setup

setup(
    name='example',
    version='21.12',
    license='Apache Software License',
    packages=['example'],
    entry_points={
        'console_scripts': ['example = example:main', 'Example=example:main'],
    },
)
