import csv
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.patches import Patch

def find_working():
    # Initialize the dictionary
    data = {}
    for w1 in range (2,21):
        for w5 in range(2,21):
            data[(w1,w5)] = {}
    
    with open("/Users/tharindu2003/Documents/ECE529/529_project/read_0_tb.csv", newline='') as csvfile:
        reader = csv.reader(csvfile)
        header = next(reader)  # Skip header row
        header = next(reader)  # Skip header row
        header = next(reader)  # Skip header row
        for row in reader:
            key_tuple = (int(float(row[1])), int(float(row[2])))
            data[key_tuple]['read_0_q_max'] = float(row[3])

    with open("/Users/tharindu2003/Documents/ECE529/529_project/read_1_tb.csv", newline='') as csvfile:
        reader = csv.reader(csvfile)
        header = next(reader)  # Skip header row
        header = next(reader)  # Skip header row
        header = next(reader)  # Skip header row
        for row in reader:
            key_tuple = (int(float(row[1])), int(float(row[2])))
            data[key_tuple]['read_1_qb_max'] = float(row[3])

    with open("/Users/tharindu2003/Documents/ECE529/529_project/write_0_tb.csv", newline='') as csvfile:
        reader = csv.reader(csvfile)
        header = next(reader)  # Skip header row
        header = next(reader)  # Skip header row
        header = next(reader)  # Skip header row
        for row in reader:
            key_tuple = (int(float(row[1])), int(float(row[2])))
            data[key_tuple]['write_0_min_write'] = float(row[3])
    
    with open("/Users/tharindu2003/Documents/ECE529/529_project/write_1_tb.csv", newline='') as csvfile:
        reader = csv.reader(csvfile)
        header = next(reader)  # Skip header row
        header = next(reader)  # Skip header row
        header = next(reader)  # Skip header row
        for row in reader:
            key_tuple = (int(float(row[1])), int(float(row[2])))
            data[key_tuple]['write_1_max_write'] = float(row[3])
    
    working = {}

    for key, values in data.items():
        if values['read_0_q_max'] < 0.5 and values['read_1_qb_max'] < 0.5 and values['write_0_min_write'] < 0.1 and values['write_1_max_write'] > 1.7:
            working[key] = values
    print("Tried: " + str(len(data)) + " Working: " + str(len(working)))

    # Create a figure and a subplot
    fig, ax = plt.subplots()

    # Prepare the data: create a 19x19 array initialized to zeros
    graph = np.zeros((19, 19, 3))

    # Iterate over each cell in the grid
    for i in range(19):
        for j in range(19):
            # Set the color based on a condition
            # Example condition: color based on even or odd sum of indices + 2 (to start from 2 to 20)
            key_tuple = (i+2, j+2)
            if data[key_tuple]['read_0_q_max']>0.5 or data[key_tuple]['read_1_qb_max']>0.5:
                graph[i, j] = [0, 0, 1]  # Blue
            elif data[key_tuple]['write_0_min_write']>0.1 or data[key_tuple]['write_1_max_write']<1.7:
                graph[i, j] = [1, 0, 0]  # Red
            else:
                graph[i,j] = [0,1,0]

    # Display the grid
    # We use 'nearest' interpolation to show the individual square colors without blurring
    ax.imshow(graph, interpolation='nearest')

    # Set the tick labels
    ax.set_xticks(np.arange(-0.5, 19-0.5, 1))
    ax.set_yticks(np.arange(-0.5, 19-0.5, 1))
    ax.set_xticklabels(np.arange(2, 21))
    ax.set_yticklabels(np.arange(2,21))
    ax.invert_yaxis()
    ax.set_title('SRAM Cell Functionality vs Cell Sizes')
    ax.set_xlabel('W1 (Lambda)')
    ax.set_ylabel('W5 (Lambda)')
    # Set the aspect of the plot to be equal, so the cells are square
    ax.set_aspect('equal')
    ax.grid(True, which='both', color='black', linewidth=1)
    # Show the plot
    legend_elements = [
        Patch(facecolor='blue', edgecolor='black', label='Read Fails'),
        Patch(facecolor='red', edgecolor='black', label='Write Fails'),
        Patch(facecolor='green', edgecolor='black', label='Works Correctly'),
    ]
    ax.legend(handles=legend_elements, loc='upper left', title="Legend")
    plt.show()
if __name__ == '__main__':
    # Path to the file - adjust the filename as needed
    find_working()
