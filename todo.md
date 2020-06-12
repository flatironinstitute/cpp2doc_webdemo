# TODO Jekyll Docs

_updated 5/29_

- add new properties to search
- made the responsive left side changes
- add styling for the 2/3 UI elements on Tuesday.
- Table sizing work
- Working now on the card layout / multicolumns
- Meeting with Sherry tomorrow - pre-conversation with her.

## Todo:
- Search add: brief, desc
- Width on left bar - smaller.
- Change min-width on <td> in signature numeration - make a class. Also make a class for the related number information "signature-table"
use nda:reshaped view as template. reduce characters to 100, update propoertions.
- Update pipeline/README with feedback from Alex. Add information on what is available for contributor editing.
- Re-deploy on vercel -> Routing issues around permalinks on vercel.
- Table sizing
- Multi-column layout build - see /cpp-api/nda - make a 3 col layout top aligned *** DO FIRST #️⃣1️⃣
- Remove howtos in cpp-api/nda example.
- Style list with grouping (see cpi-api/nda/basic_array)
- Remove the logo
- Expand warning syntax / and note!  classes ".alert alert-warning" and ".alert .alert-note"

_Icebox_
- Change main-concepts to an alternate name to avoid confusion with new c++ concepts.
- Vim links / github links
- Investigate other speed optimizations: parallellization, etc.
- Sublists for nda _Ask Olivier for example_

## Verify:
- Remove toc - update heading on layouts from OP. [Add :no-toc to class, function, namespace, cpp-concept. ]
- Add function name etc on top of each page in heading.(see cppref - only name no namespace with parent/::)
- Create folding list functionality (via class)

## Done:
- change destination folder to docs/cpp-api
- Speed: use cache plugin,
- Fix YAML spacing errors in array / array_view
- Add great-grandparent level - and more?
- Fix left side navigation
- Remove gray on gray code highlighting font color. (blackish)
-  Try a test deploy /ci. - Github pages
-  for breadcrumbs use only the newest term, not the whole string.
-  Add the following properties to YAML
      - `title`
      - `has-children` (if applicable)
      -  permalink starts with "/"
      - layout: default
- page title / seo
- test deployment on vercel - aka now
- Search
- Improve nav speed generation: make static, use a table to transfer, use permalink



## To Verify:

- Verify that constructor method naming / descrutor method naming is correct. See below...

Files and permalink structure changes:

- nda/array/array.md for the index
- nda/array/method1.md (no _ for the method : _ leads to troubles
- nda/array-constructors.md for constructors (same for desctructors).
  [array-constructors is renamed (constructors) in the page and title]
- Also we use permalinks to have an obsolute URL :
  /cpp_api/nda/array/xxx, /py_api/gf/…. /ccp_api/triqs/gf/…. independly of where it is on the directory