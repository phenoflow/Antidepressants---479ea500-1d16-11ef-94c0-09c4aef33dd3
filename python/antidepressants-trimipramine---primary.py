# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"25045","system":"gprdproduct"},{"code":"4310","system":"gprdproduct"},{"code":"34222","system":"gprdproduct"},{"code":"71253","system":"gprdproduct"},{"code":"53808","system":"gprdproduct"},{"code":"25085","system":"gprdproduct"},{"code":"42228","system":"gprdproduct"},{"code":"41681","system":"gprdproduct"},{"code":"32863","system":"gprdproduct"},{"code":"67935","system":"gprdproduct"},{"code":"1310","system":"gprdproduct"},{"code":"70287","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-trimipramine---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-trimipramine---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-trimipramine---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
