import matplotlib.pyplot as plt
import csv
import numpy as np

csv_file = open('results.csv', "r")

csv_reader = csv.reader(csv_file)

csv_rows = []

for row in csv_reader:
    csv_rows += [row]

csv_file.close()


###########################################################
# Function to get data from the csv table
def get_data(data_rows: list, cpu_name: str,
             data_name: str, test_name: str) -> float:
    first_row = data_rows[0]

    column_name = f"{cpu_name}-{data_name}"

    col_num = 0
    for c in range(1, len(first_row)):
        if first_row[c] == column_name:
            col_num = c
            break

    if col_num == 0:
        raise Exception(f"No column number found for entry {column_name}")

    row_num = 0
    for r in range(1, len(data_rows)):
        row = data_rows[r]
        if row[0] == test_name:
            return float(row[col_num])

########################################################### Plot prep
cpus = [
"AMDTurinCO",
"AMDRyzen5800XCO",
"IntelXeonCO",
"ARM4CO",
"ARM1CO",
]

data_types = ["mean_time", "SEM"]

def map_language_from_compiler(compiler: str) -> str:
    fortan_compilers = ["gfortran", "ifx"]

    if compiler in fortan_compilers:
        return "Fortran"

    return "C++"

def make_plot(plot_num, test_num, plot_title):
    tests = [
    f"Test{test_num}/gfortran_o3.x",
    f"Test{test_num}/gpp_o3.x",
    f"Test{test_num}/ifx_o3.x",
    f"Test{test_num}/icx_o3.x",
    ]
    colors = tuple(["black","blue","gray","green" ])

    max_y = 0.0
    configurations = tuple(cpus)
    data_pairs = {}
    for test_long_name in tests:
        dash_pos = test_long_name.find("/")
        test_name = test_long_name[dash_pos+1:]

        mean_time_data = []
        SEM_data = []
        for cpu in cpus:
            mean_time = get_data(csv_rows, cpu, "mean_time", test_long_name)
            SEM = get_data(csv_rows, cpu, "SEM", test_long_name)
            max_y = max(max_y, mean_time+SEM)

            mean_time_data += [mean_time]
            SEM_data += [SEM]

        data_pairs[test_name] = [mean_time_data, SEM_data]


    x = np.arange(len(configurations))  # the label locations
    width = 0.2  # the width of the bars
    multiplier = 0

    fig, ax = plt.subplots(layout='constrained', figsize=(10, 5))

    winner_pair = ["none", 1000.0]
    cid = 0
    for key, data_pair in data_pairs.items():
        offset = width * multiplier

        mean_time_data = tuple(data_pair[0])
        SEM_data = tuple(data_pair[1])

        compiler = key.replace(".x","")
        compiler = "g++" if compiler == "gpp" else compiler

        times = []
        for time in mean_time_data:
            if time > 0.0:
                times += [time]
        min_time = np.min(times)
        if min_time < winner_pair[1]:
            winner_pair = [map_language_from_compiler(compiler), min_time]

        rects = ax.bar(x + offset, mean_time_data, width,yerr=SEM_data,
                    label=compiler, color=colors[cid])
        custom_labels = []
        for i in range(0, len(mean_time_data)):
            SEM_percent = SEM_data[i]
            # custom_labels += [f'{mean_time_data[i]:.0f}\u00B1{SEM_percent:.1f}']
            label = f'{mean_time_data[i]:.1f}'
            label = "" if label == "0" else label
            custom_labels += [label]
        ax.bar_label(rects, labels=custom_labels, padding=3)
        # ax.bar_label(rects, fmt="%.0f", padding=3)
        multiplier += 1
        cid += 1

    # Add some text for labels, title and custom x-axis tick labels, etc.
    ax.set_ylabel('Time taken (milli-seconds)')
    ax.set_title(f'Test {plot_num}({test_num}) {plot_title} ({winner_pair[0]} wins, {winner_pair[1]:.1f} ms)')
    ax.set_xticks(x + width, configurations)
    ax.legend(loc='upper center', ncols=4)
    ax.set_ylim(0, max_y*1.25)

    plt.savefig(f"Plot{plot_num}.png")



########################################################### Plot 1
plot_num =  1; test_num =  4; plot_title = r"$\sqrt{\alpha}$"; make_plot(plot_num,test_num,plot_title)
plot_num =  2; test_num =  5; plot_title = r"$\alpha^\beta$"; make_plot(plot_num,test_num,plot_title)
plot_num =  3; test_num =  6; plot_title = r"$e^\beta$"; make_plot(plot_num,test_num,plot_title)
plot_num =  4; test_num =  7; plot_title = r"$\ln \alpha$"; make_plot(plot_num,test_num,plot_title)
plot_num =  5; test_num =  8; plot_title = r"$\sin \alpha$"; make_plot(plot_num,test_num,plot_title)
plot_num =  6; test_num =  2; plot_title = r"$\vec{x}_i =\vec{x}_i + \alpha \vec{y}_i$"; make_plot(plot_num,test_num,plot_title)
plot_num =  7; test_num =  1; plot_title = r"$\beta =\beta + \alpha \vec{v}_i$"; make_plot(plot_num,test_num,plot_title)
plot_num =  8; test_num =  3; plot_title = r"$\alpha =\alpha + \vec{x}_i \cdot \vec{y}_i$"; make_plot(plot_num,test_num,plot_title)
