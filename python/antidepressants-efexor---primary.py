# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"76771","system":"gprdproduct"},{"code":"9182","system":"gprdproduct"},{"code":"74010","system":"gprdproduct"},{"code":"74011","system":"gprdproduct"},{"code":"65738","system":"gprdproduct"},{"code":"51280","system":"gprdproduct"},{"code":"5710","system":"gprdproduct"},{"code":"67271","system":"gprdproduct"},{"code":"623","system":"gprdproduct"},{"code":"77089","system":"gprdproduct"},{"code":"67288","system":"gprdproduct"},{"code":"1474","system":"gprdproduct"},{"code":"75894","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-efexor---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-efexor---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-efexor---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
