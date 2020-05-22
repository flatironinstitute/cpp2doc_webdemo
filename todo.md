# TODO Jekyll Docs

## To Do before demo:

1. investigate other speed options: parallellization, etc.
2. Create folding list functionality (via class)
3. Fix the index.
4. Fix Webrick.
5. Test pipeline/README with a user
6. Fix page name in browser
7. Test with new docs
8. Add function name etc on top of each page in heading.

## To Verify:

1. Add the following properties to YAML

   - `title`
   - `has-children` (if applicable)
   - `parent`
   - `grand_parent` (if applicable)

2. Files and permalink structure changes:
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
