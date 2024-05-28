# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"6854","system":"gprdproduct"},{"code":"59954","system":"gprdproduct"},{"code":"58625","system":"gprdproduct"},{"code":"31168","system":"gprdproduct"},{"code":"43257","system":"gprdproduct"},{"code":"66183","system":"gprdproduct"},{"code":"33337","system":"gprdproduct"},{"code":"68544","system":"gprdproduct"},{"code":"74557","system":"gprdproduct"},{"code":"46668","system":"gprdproduct"},{"code":"43239","system":"gprdproduct"},{"code":"43242","system":"gprdproduct"},{"code":"66752","system":"gprdproduct"},{"code":"59953","system":"gprdproduct"},{"code":"6795","system":"gprdproduct"},{"code":"54644","system":"gprdproduct"},{"code":"64223","system":"gprdproduct"},{"code":"54342","system":"gprdproduct"},{"code":"53699","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-mirtazapine---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-mirtazapine---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-mirtazapine---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
