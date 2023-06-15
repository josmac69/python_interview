# Game of Life

URL: https://www.geeksforgeeks.org/program-for-conways-game-of-life/

## Description

Initially, there is a grid with some cells which may be alive or dead. Our task is to generate the next generation of cells based on the following rules:

* Any live cell with fewer than two live neighbors dies as if caused by underpopulation.
* Any live cell with two or three live neighbors lives on to the next generation.
* Any live cell with more than three live neighbors dies, as if by overpopulation.
* Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

This task is known as Conway's Game of Life, a cellular automaton devised by the British mathematician John Horton Conway in 1970. The game is a zero-player game, meaning that its evolution is determined by its initial state, requiring no further input.

## Solution


Main logic is in this line of code:
```
total = np.sum(grid[max(i-1, 0):min(i+2, grid.shape[0]), max(j-1, 0):min(j+2, grid.shape[1])]) - grid[i, j]
```

This line calculates the sum of the 8 neighboring cells around a given cell at position (i, j) in the grid. Here's how it works:

1. `grid[max(i-1, 0):min(i+2, grid.shape[0]), max(j-1, 0):min(j+2, grid.shape[1])]`:
   * This part of the code is slicing the grid to get a 3x3 sub-grid centered around the cell at (i, j).
   * The max and min functions are used to handle the edge cases where the cell is on the border of the grid.
   * For example, if i is 0, i-1 would be -1, which would be out of the grid's bounds, so max(i-1, 0) is used to ensure that the slice starts at 0 in this case.
   * Similarly, min(i+2, grid.shape[0]) is used to ensure that the slice doesn't go beyond the end of the grid.

2. `np.sum(...)`:
   * This function calculates the sum of all the cells in the 3x3 sub-grid.
   * This includes the cell at (i, j) itself as well as its neighbors.

3. `- grid[i, j]`:
   * Since the cell at (i, j) was included in the sum calculated in the previous step, it's subtracted here to get the sum of just the neighboring cells.

So, the total variable holds the sum of the 8 neighboring cells around the cell at (i, j). If the cell is on the edge of the grid, the sum will be of fewer cells, as there are fewer neighbors.