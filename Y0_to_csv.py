# This script converts the host of yaml-based test results to .csv. The
# results are contained in the `results/` folder separated by processor
# configuration.
import yaml

processors = [
"AMDRyzen5800x",
"AMDRyzen5800XCO",
"AMDTurin",
"AMDTurinCO",
"ARM4",
"ARM4CO",
"ARM1",
"ARM1CO",
"IntelXeon",
"IntelXeonCO",
]

tests =[
"Test1/gfortran.x",
"Test1/gfortran_o3.x",
"Test1/gfortran_w_lu2.x",
"Test1/gfortran_w_lu2_o3.x",
"Test1/gfortran_w_lu4.x",
"Test1/gfortran_w_lu8.x",
"Test1/flang.x",
"Test1/flang_o3.x",
"Test1/flang_w_lu2.x",
"Test1/flang_w_lu2_o3.x",
"Test1/flang_w_lu4.x",
"Test1/flang_w_lu8.x",
"Test1/ifx.x",
"Test1/ifx_o3.x",
"Test1/ifx_w_lu2.x",
"Test1/ifx_w_lu2_o3.x",
"Test1/ifx_w_lu4.x",
"Test1/ifx_w_lu8.x",
"Test1/gpp.x",
"Test1/gpp_o3.x",
"Test1/gpp_w_lu2.x",
"Test1/gpp_w_lu2_o3.x",
"Test1/gpp_w_lu4.x",
"Test1/gpp_w_lu8.x",
"Test1/icx.x",
"Test1/icx_o3.x",
"Test1/icx_w_lu2.x",
"Test1/icx_w_lu2_o3.x",
"Test1/icx_w_lu4.x",
"Test1/icx_w_lu8.x",
"Test1/clang.x",
"Test1/clang_o3.x",
"Test1/clang_w_lu2.x",
"Test1/clang_w_lu2_o3.x",
"Test1/clang_w_lu4.x",
"Test1/clang_w_lu8.x",

"Test2/gfortran.x",
"Test2/gfortran_o3.x",
"Test2/gfortran_w_lu2.x",
"Test2/gfortran_w_lu2_o3.x",
"Test2/gfortran_w_lu4.x",
"Test2/gfortran_w_lu8.x",
"Test2/flang.x",
"Test2/flang_o3.x",
"Test2/flang_w_lu2.x",
"Test2/flang_w_lu2_o3.x",
"Test2/flang_w_lu4.x",
"Test2/flang_w_lu8.x",
"Test2/ifx.x",
"Test2/ifx_o3.x",
"Test2/ifx_w_lu2.x",
"Test2/ifx_w_lu2_o3.x",
"Test2/ifx_w_lu4.x",
"Test2/ifx_w_lu8.x",
"Test2/gpp.x",
"Test2/gpp_o3.x",
"Test2/gpp_w_lu2.x",
"Test2/gpp_w_lu2_o3.x",
"Test2/gpp_w_lu4.x",
"Test2/gpp_w_lu8.x",
"Test2/icx.x",
"Test2/icx_o3.x",
"Test2/icx_w_lu2.x",
"Test2/icx_w_lu2_o3.x",
"Test2/icx_w_lu4.x",
"Test2/icx_w_lu8.x",
"Test2/clang.x",
"Test2/clang_o3.x",
"Test2/clang_w_lu2.x",
"Test2/clang_w_lu2_o3.x",
"Test2/clang_w_lu4.x",
"Test2/clang_w_lu8.x",

"Test3/gfortran.x",
"Test3/gfortran_o3.x",
"Test3/gfortran_w_lu2.x",
"Test3/gfortran_w_lu2_o3.x",
"Test3/gfortran_w_lu4.x",
"Test3/gfortran_w_lu8.x",
"Test3/flang.x",
"Test3/flang_o3.x",
"Test3/flang_w_lu2.x",
"Test3/flang_w_lu2_o3.x",
"Test3/flang_w_lu4.x",
"Test3/flang_w_lu8.x",
"Test3/ifx.x",
"Test3/ifx_o3.x",
"Test3/ifx_w_lu2.x",
"Test3/ifx_w_lu2_o3.x",
"Test3/ifx_w_lu4.x",
"Test3/ifx_w_lu8.x",
"Test3/gpp.x",
"Test3/gpp_o3.x",
"Test3/gpp_w_lu2.x",
"Test3/gpp_w_lu2_o3.x",
"Test3/gpp_w_lu4.x",
"Test3/gpp_w_lu8.x",
"Test3/icx.x",
"Test3/icx_o3.x",
"Test3/icx_w_lu2.x",
"Test3/icx_w_lu2_o3.x",
"Test3/icx_w_lu4.x",
"Test3/icx_w_lu8.x",
"Test3/clang.x",
"Test3/clang_o3.x",
"Test3/clang_w_lu2.x",
"Test3/clang_w_lu2_o3.x",
"Test3/clang_w_lu4.x",
"Test3/clang_w_lu8.x",

"Test4/gfortran.x",
"Test4/gfortran_o3.x",
"Test4/flang.x",
"Test4/flang_o3.x",
"Test4/ifx.x",
"Test4/ifx_o3.x",
"Test4/gpp.x",
"Test4/gpp_o3.x",
"Test4/icx.x",
"Test4/icx_o3.x",
"Test4/clang.x",
"Test4/clang_o3.x",

"Test5/gfortran.x",
"Test5/gfortran_o3.x",
"Test5/flang.x",
"Test5/flang_o3.x",
"Test5/ifx.x",
"Test5/ifx_o3.x",
"Test5/gpp.x",
"Test5/gpp_o3.x",
"Test5/icx.x",
"Test5/icx_o3.x",
"Test5/clang.x",
"Test5/clang_o3.x",

"Test6/gfortran.x",
"Test6/gfortran_o3.x",
"Test6/flang.x",
"Test6/flang_o3.x",
"Test6/ifx.x",
"Test6/ifx_o3.x",
"Test6/gpp.x",
"Test6/gpp_o3.x",
"Test6/icx.x",
"Test6/icx_o3.x",
"Test6/clang.x",
"Test6/clang_o3.x",

"Test7/gfortran.x",
"Test7/gfortran_o3.x",
"Test7/flang.x",
"Test7/flang_o3.x",
"Test7/ifx.x",
"Test7/ifx_o3.x",
"Test7/gpp.x",
"Test7/gpp_o3.x",
"Test7/icx.x",
"Test7/icx_o3.x",
"Test7/clang.x",
"Test7/clang_o3.x",

"Test8/gfortran.x",
"Test8/gfortran_o3.x",
"Test8/flang.x",
"Test8/flang_o3.x",
"Test8/ifx.x",
"Test8/ifx_o3.x",
"Test8/gpp.x",
"Test8/gpp_o3.x",
"Test8/icx.x",
"Test8/icx_o3.x",
"Test8/clang.x",
"Test8/clang_o3.x",
]

data_types = ["mean_time", "SEM"]

num_procs = len(processors)

first_row = ["TestName"]
for processor in processors:
    for data_type in data_types:
        first_row += [f"{processor}-{data_type}"]

# data is a dictionary
#                    proc1      , ..., proc N
# data[test-name] = [[mean, SEM], ..., [mean, SEM]]
data = {}
for test in tests:
    data[test] = [[0.0, 0.0] for _ in range(num_procs)]

# print(data)

for pid,processor in enumerate(processors):
    print(f"Processor: {pid}-{processor}")
    with open(f"results/{processor}/TestResults.yaml") as result_file:
        result_data = yaml.safe_load(result_file)

        for result_block in result_data:
            test_name = result_block["name"]
            test_passed = result_block["passed"]


            if test_name in data and test_passed:
                print(f"  test_name: {test_name}", data[test_name], len(data[test_name]))
                test_data = data[test_name][pid]
                print("    before", test_data)

                tagged_results = result_block["tagged_results"]

                test_data[0] = tagged_results["mean_time"]
                test_data[1] = tagged_results["SEM"]

                print("    after",test_data)


# print("whole_test: ", "Test1/gfortran.x", data["Test1/gfortran.x"])

with open("results.csv", "w") as csv_file:
    for value in first_row:
        csv_file.write(value)
        suffix = "," if value != first_row[-1] else "\n"
        csv_file.write(suffix)

    for test_name, test_data in data.items():
        csv_file.write(f"{test_name},")

        un_nested = []
        for proc_data in test_data:
            for value in proc_data:
                un_nested += [value]

        print(un_nested)

        for id, value in enumerate(un_nested):
            csv_file.write(f"{value:.5f}")
            suffix = "," if id != len(un_nested)-1 else "\n"
            csv_file.write(suffix)


