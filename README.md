# natspec.nvim

A small nvim utility for generating documentation comments in solidity.

Available user commands:

| Command  |  Result  |
|---|---|
| `NatspecComment`  | `//`  |
|  `NatspecNotice` |   `/// @notice`|
|  `Natspec` |  Generates `@notice, @dev, @params, @returns` natspec comment |

## Remarks

The generated natspec is not adapted to the function's signature. I quickly needed something to work  while developing a solidity project.
