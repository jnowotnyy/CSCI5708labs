Group Members:
- Jason Nowotny
- Henry Sotsaikich

# Plan for Lab 3

## Nodelist.c
### static void recompute_limits(LimitState *node);
- add a function (defined by us) at the end, that will pass down the offset to a child node.

### static void passBound(???)
- not attached to the name I chose
- Should take in limit state? node B
- Should take in Plan state? nodeA
- Probably requires a case-switch (or if elseif chain) for several different Plan States?
- keep in mind nodeSort.c works in conjunction with the changes in paramaters that will happen in here.

ISA(nodeA, SortState)

### ideas for what plan states are needed
- SortState 
    - located on line 2031-2043 in src/include/nodes/execnodes.h
- MergeAppendState
    - located on line 1247-1259 in src/include/nodes/execnodes.h
- ResultState
    - located on line 1130-1136 in src/include/nodes/execnodes.h


