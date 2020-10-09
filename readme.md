Run `demonstrate-bug.sh`

It will:
1. Install yarn dependencies
2. Show the import ordering bug

Each of the files contains a note next to a dependency import that changes the output
For example:
- Removing either (or both) of the imports in `index.js` makes the problem go away
- Removing the import in `b.js` makes the problem go away
- Adding an import to `c.js` makes the problem go away
