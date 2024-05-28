# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"43247","system":"gprdproduct"},{"code":"60534","system":"gprdproduct"},{"code":"66580","system":"gprdproduct"},{"code":"43246","system":"gprdproduct"},{"code":"62335","system":"gprdproduct"},{"code":"61856","system":"gprdproduct"},{"code":"64101","system":"gprdproduct"},{"code":"54012","system":"gprdproduct"},{"code":"68680","system":"gprdproduct"},{"code":"43237","system":"gprdproduct"},{"code":"43236","system":"gprdproduct"},{"code":"43235","system":"gprdproduct"},{"code":"77865","system":"gprdproduct"},{"code":"79252","system":"gprdproduct"},{"code":"55482","system":"gprdproduct"},{"code":"43253","system":"gprdproduct"},{"code":"48698","system":"gprdproduct"},{"code":"43248","system":"gprdproduct"},{"code":"60138","system":"gprdproduct"},{"code":"50892","system":"gprdproduct"},{"code":"60370","system":"gprdproduct"},{"code":"65555","system":"gprdproduct"},{"code":"49820","system":"gprdproduct"},{"code":"6481","system":"gprdproduct"},{"code":"64139","system":"gprdproduct"},{"code":"43241","system":"gprdproduct"},{"code":"43256","system":"gprdproduct"},{"code":"6846","system":"gprdproduct"},{"code":"6421","system":"gprdproduct"},{"code":"15268","system":"gprdproduct"},{"code":"43234","system":"gprdproduct"},{"code":"58291","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["dispersible-antidepressants---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["dispersible-antidepressants---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["dispersible-antidepressants---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
