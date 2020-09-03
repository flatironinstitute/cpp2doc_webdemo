# TODO Jekyll Docs

_updated 9/3_

## Todo:
- Static Jupyter notebooks embed
- Update card html to make it flow from the yaml.
- Make a landing page attempt.
  - picture of the code screen
  - samples of the codes
  - cards and links to basic libraries, core libraries, applications
  - 2 screens with code and graph from code as visual
- Inline editing- or at least links to the file in Vim from the development environment
- Edit an example in C++ and run immediately. Jupyter Notebook embed options.
- Rename Basic C++ libraries. CCQ Toolkit ? Rhizome?
- Review concept page when written.
- Check 404 pages. Make sure to specify links.

## Verify:

Add function name etc on top of each page in heading.(see cppref - only name no namespace with parent/::)
Multi-column layout build - see /cpp-api/nda - make a 3 col layout top aligned \*\*\* DO FIRST #️⃣1️⃣
Are the under items individual links or examples? Would the card point to a separate page or to nothing?

## Done:

- Create folding list functionality (via class)
- Remove toc - update heading on layouts from OP. [Add :no-toc to class, function, namespace, cpp-concept. ]
- Expand warning syntax / and note! classes ".alert alert-warning" and ".alert .alert-note"
- Style list with grouping (see cpi-api/nda/basic_array)
- Change min-width on <td> in signature numeration - make a class. Also make a class for the related number information "signature-table"
  use nda:reshaped view as template. reduce characters to 100, update propoertions.
- Remove the logo
- change destination folder to docs/cpp-api
- Speed: use cache plugin,
- Fix YAML spacing errors in array / array_view
- Add great-grandparent level - and more?
- Fix left side navigation
- Remove gray on gray code highlighting font color. (blackish)
- Try a test deploy /ci. - Github pages
- for breadcrumbs use only the newest term, not the whole string.
- Add the following properties to YAML
  - `title`
  - `has-children` (if applicable)
  - permalink starts with "/"
  - layout: default
- page title / seo
- test deployment on vercel - aka now
- Search
- Improve nav speed generation: make static, use a table to transfer, use permalink
- Search add: brief, desc
- Width on left bar - smaller.
- Change all deploys to the font that we like.

_Icebox_

- Change main-concepts to an alternate name to avoid confusion with new c++ concepts.
- Vim links / github links
- Investigate other speed optimizations: parallellization, etc.
- Sublists for nda _Ask Olivier for example_
- New icon for folding list
