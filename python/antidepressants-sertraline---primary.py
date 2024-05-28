# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"54933","system":"gprdproduct"},{"code":"62950","system":"gprdproduct"},{"code":"61503","system":"gprdproduct"},{"code":"44944","system":"gprdproduct"},{"code":"66413","system":"gprdproduct"},{"code":"62692","system":"gprdproduct"},{"code":"59600","system":"gprdproduct"},{"code":"68756","system":"gprdproduct"},{"code":"55146","system":"gprdproduct"},{"code":"73962","system":"gprdproduct"},{"code":"727","system":"gprdproduct"},{"code":"66560","system":"gprdproduct"},{"code":"69726","system":"gprdproduct"},{"code":"67928","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-sertraline---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-sertraline---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-sertraline---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
