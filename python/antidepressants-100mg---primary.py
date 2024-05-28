# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"57107","system":"gprdproduct"},{"code":"52867","system":"gprdproduct"},{"code":"59161","system":"gprdproduct"},{"code":"22070","system":"gprdproduct"},{"code":"34731","system":"gprdproduct"},{"code":"67431","system":"gprdproduct"},{"code":"65879","system":"gprdproduct"},{"code":"77229","system":"gprdproduct"},{"code":"66578","system":"gprdproduct"},{"code":"77881","system":"gprdproduct"},{"code":"55491","system":"gprdproduct"},{"code":"3777","system":"gprdproduct"},{"code":"45233","system":"gprdproduct"},{"code":"45242","system":"gprdproduct"},{"code":"24152","system":"gprdproduct"},{"code":"57972","system":"gprdproduct"},{"code":"64000","system":"gprdproduct"},{"code":"33090","system":"gprdproduct"},{"code":"76839","system":"gprdproduct"},{"code":"34916","system":"gprdproduct"},{"code":"12503","system":"gprdproduct"},{"code":"69941","system":"gprdproduct"},{"code":"79401","system":"gprdproduct"},{"code":"83","system":"gprdproduct"},{"code":"24680","system":"gprdproduct"},{"code":"42499","system":"gprdproduct"},{"code":"70991","system":"gprdproduct"},{"code":"70300","system":"gprdproduct"},{"code":"46801","system":"gprdproduct"},{"code":"24141","system":"gprdproduct"},{"code":"33074","system":"gprdproduct"},{"code":"76298","system":"gprdproduct"},{"code":"61835","system":"gprdproduct"},{"code":"10787","system":"gprdproduct"},{"code":"34401","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
