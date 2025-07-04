from skbuild import setup  # This line replaces 'from setuptools import setup'
import platform

build_preset = ''
if platform.system() == 'Linux':
    build_preset = 'build-linux'
elif platform.system() == 'Darwin':
    build_preset = 'build-osx'

setup(
    name="pyoperon",
    version="0.5.0",
    description="python bindings for the operon library",
    author='Bogdan Burlacu',
    packages=['pyoperon'],
    python_requires=">=3.8",
    cmake_args=["-G", "Visual Studio 17 2022"]
)
