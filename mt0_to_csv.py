import sys
import csv

def process_file_to_csv(input_file, output_file):
    with open(input_file, 'r') as file, open(output_file, 'w', newline='') as csvfile:
        # Prepare a CSV writer
        writer = csv.writer(csvfile)
        # Write the header
        writer.writerow(['index', 'w1', 'w5', 'q_max', 'bitline_min', 'temper', 'alter#'])

        # Initialize a variable to keep track of line pairing
        is_first_line = True
        # Temporary storage for data from the first line
        first_line_data = []

        # Iterate over each line in the file
        for line in file:
            # Strip whitespace from the beginning and end of the line
            line = line.strip()

            # Check if it is the first line of the pair
            if is_first_line:
                # Split the line into components and store in first_line_data
                first_line_data = line.split()
                # Next line will be the second line of the pair
                is_first_line = False
            else:
                # This is the second line of the pair, split it
                second_line_data = line.split()
                # Combine the data from the first and second lines
                combined_data = first_line_data + second_line_data
                # Write the combined data to the CSV file
                writer.writerow(combined_data)
                # Next line will be the first line of a new pair
                is_first_line = True

if __name__ == '__main__':
    # Check if command line arguments are provided
    if len(sys.argv) != 3:
        print("Usage: python script.py <input_file_path> <output_csv_file_path>")
        sys.exit(1)
    
    # Get the file paths from the command line
    input_file_path = sys.argv[1]
    output_csv_file_path = sys.argv[2]

    # Process the file and write to CSV
    process_file_to_csv(input_file_path, output_csv_file_path)
