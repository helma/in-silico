.. |date| date::

=============================================================================
Extending OpenTox to Nano Safety with eNanoMapper
=============================================================================

.. class:: center

  Christoph Helma

  in silico toxicology gmbh

  .. image:: logo.png
 
Basic idea
==========

Webservices as building blocks for computational toxicology

  - avoid reinventing the wheel
  - reuse existing components
  - rapid prototyping
  - interoperability
  - uses semantic web technologies

Application programming interface (API)
=======================================

Request messages:
  - Representational state transfer (*REST*, based on HTTP messages)

Data exchange:
  - Structure: object dependent
  - Format: Resource Description Framework (*RDF*), JavaScript Object Notation (*JSON*)

OpenTox
=======

*Focus on predictive toxicology*

Main objects: Compound, Feature, Dataset, Algorithm, Model, Validation

Helper objects: Task, Authentication and Authorisation, Report, Ontology 

Data format: RDF 

http://opentox.org/dev/apis/api-1.2

ToxBank
=======

*Extensions for capturing bioassay data* 

Main addition: Investigation (description of biological experiments)

Helper objects: Alert, Data, Index, Organisation, Project, Protocol, Search, Session, Template, User

Data format: RDF, ISA-Tab

http://api.toxbank.net

eNanoMapper
===========

*Extensions for capturing nanomaterial data*

Main addition: Substance (characterisation of nanoparticles)

Helper objects: Bundle, Myaccount, Property, Query, Substanceowner, Pmml, Bibtex

Data format: JSON

eNanoMapper APIs
================

IDEA: http://enanomapper.github.io/API

NTUA: http://app.jaqpot.org:8080/jaqpot/swagger

IST: https://enm.in-silico.ch/api/dist

Technical problems
==================

- (De)Serialisation of large datasets/investigations
- Reliability/availability/compatibility of external services
- Local service deployment (e.g. for in house services)

Documentation problems
======================

- Scattered/outdated documentation
- Difficult to maintain for developers (no suitable cross-platform solution for code-based documentation)
- Limitations of documentation platforms (e.g. SWAGGER) to document important details

API problems
============

- Lack of orthogonality (large number of partially redundant helper objects)
- Ad hoc extensions of individual developers
- Undocumented/silent API/data format changes 

Coordination problems
=====================

- Individual API changes may be necessary and justified
- Conflict resolution works one to one, but leaves out other developers (and consistency)
- No common strategy for conflict resolution and API updates
- Very limited developer base for testing and feedback

OpenTox/ToxBank/eNanoMapper APIs
================================

http://opentox.org/dev/apis/api-1.2

http://api.toxbank.net

http://enanomapper.github.io/API

http://app.jaqpot.org:8080/jaqpot/swagger

https://enm.in-silico.ch/api/dist

