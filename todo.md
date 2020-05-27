# TODO Jekyll Docs

_updated 5/22_

## Low Priority

- Investigate other speed optimizations: parallellization, etc.
- Create folding list functionality (via class)

## To Do before demo:

_priority_

- Search finish
- Fix the index / Fix Webrick
- improve nav speed generation
- Incremental regeneration
- Remove toc - update heading on layouts from OP. \* Add :no-toc to class, function, namespace, cpp-concept.
- Width on left bar - smaller.
- Change min-width on <td> in signature numeration - make a class. Also make a class for the related number information "signature-table"
- Confirm that left nesting highlights are working correctly (see Design dropdown)
- Add function name etc on top of each page in heading.(see cppref - only name no namespace with parent/::)

## Todo after demo:

- Update pipeline/README with feedback from Alex. Add information on what is available for contributor editing.
- Change main-concepts to an alternate name to avoid confusion with new c++ concepts.
- Vim links / github links

## To Verify:

- Verify that constructor method naming / descrutor method naming is correct. See below...

Files and permalink structure changes:

- nda/array/array.md for the index
- nda/array/method1.md (no _ for the method : _ leads to troubles
- nda/array-constructors.md for constructors (same for desctructors).
  [array-constructors is renamed (constructors) in the page and title]
- Also we use permalinks to have an obsolute URL :
  /cpp_api/nda/array/xxx, /py_api/gf/…. /ccp_api/triqs/gf/…. independly of where it is on the directory

## Done:

    1. change destination folder to docs/cpp-api
    2. Speed: use cache plugin,
    3. Fix YAML spacing errors in array / array_view
    4. Add great-grandparent level - and more?
    5. Fix left side navigation
    6. Remove gray on gray code highlighting font color. (blackish)
    7. Try a test deploy /ci. - Github pages
    8. for breadcrumbs use only the newest term, not the whole string.
    9.  Add the following properties to YAML
      - `title`
      - `has-children` (if applicable)
      -  permalink starts with "/"
    10. page title / seo
