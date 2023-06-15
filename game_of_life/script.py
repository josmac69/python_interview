import numpy as np

def next_generation(grid):
    # Create a copy of the grid to calculate the new state
    new_grid = grid.copy()

    # Iterate over each cell in the grid
    for i in range(grid.shape[0]):
        for j in range(grid.shape[1]):
            # Calculate the sum of the neighbors
            total = np.sum(grid[max(i-1, 0):min(i+2, grid.shape[0]), max(j-1, 0):min(j+2, grid.shape[1])]) - grid[i, j]

            # Apply the rules of the game
            if grid[i, j] == 1:
                if total < 2 or total > 3:
                    new_grid[i, j] = 0
            elif total == 3:
                new_grid[i, j] = 1

    # Return the new grid
    return new_grid

if __name__ == "__main__":
    # Generate a random grid
    grid = np.random.choice([0, 1], size=(10, 10))

    # Print the initial grid
    print("Initial grid:")
    print(grid)

    # Generate the next generations and print them
    for i in range(3):
        grid = next_generation(grid)
        print(f"\nGeneration {i+1}:")
        print(grid)
