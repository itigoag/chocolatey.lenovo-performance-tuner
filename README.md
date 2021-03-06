# Chocolatey Package: lenovo-performance-tuner

[![Build Status](https://img.shields.io/travis/itigoag/chocolatey.lenovo-performance-tuner?style=flat-square)](https://travis-ci.org/itigoag/chocolatey.lenovo-performance-tuner) [![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=popout-square)](licence) [![Chocolatey](https://img.shields.io/chocolatey/v/lenovo-performance-tuner?label=package%20version)](https://chocolatey.org/packages/lenovo-performance-tuner) [![Chocolatey](https://img.shields.io/chocolatey/dt/lenovo-performance-tuner?label=package%20downloads&style=flat-square)](https://chocolatey.org/packages/lenovo-performance-tuner)

## Description

Lenovo Performance Tuner is a performance optimization tool for Lenovo ThinkPad™ and ThinkStation™
P-series computers. LPT v2.0 builds upon our first release.

Lenovo Performance Tuner makes getting the most out of your applications easy. It comes with numerous profiles for many popular ISV applications like AutoCAD, SolidWorks, Adobe Creative Suite and many more. Even if your application is not provided, you can easily create settings for any applications you use. Lenovo Performance Tuner dynamically changes system settings like power scheme, visual performance and effects, process priority and processor affinity. This allows you to get all of the power you can from a system. With Lenovo Performance Tuner, you can reserve specific CPU cores just for the application you are working with. That means your app always performs at the maximum, regardless of what the rest of the system is doing. It can even change these automatically when you switch applications. Have a high end system with multiple CPUs? It can even optimize multiple applications at the same time on different processor groups.

IT Administrators can download the above LPT Admin Templates to allow full control over LPT in the enterprise. For more information, see the HELP section within LPT.

Refer to the Read Me file for all the new features in LPT v2.0 (which are included in the maintenance release of LPT v2.0.2.1).

### Supported Systems

Lenovo Performance Tuner runs on all ThinkStation and ThinkPad P Series workstations and laptops.

### Supported Operating Systems

Microsoft Windows 7 (64-bit)
Microsoft Windows 8 (64-bit)
Microsoft Windows 8.1 (64-bit)
Microsoft Windows 10 (64-bit)

## Installation

### choco

installation without parameters.

```ps1
 choco install lenovo-performance-tuner
```

### [ITIGO Packages](https://github.com/itigoag/ansible.packages)

installation without parameters.

```yml
packages:
  'lenovo-performance-tuner':
    version: latest
```

## Author

- [Simon Bärlocher](https://sbaerlocher.ch)
- [ITIGO AG](https://www.itigo.ch)

## License

This project is under the MIT License. See the [LICENSE](licence) file for the full license text.

## Copyright

(c) 2019, ITIGO AG
