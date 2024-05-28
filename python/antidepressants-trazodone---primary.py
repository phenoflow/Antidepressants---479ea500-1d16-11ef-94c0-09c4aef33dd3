# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"66749","system":"gprdproduct"},{"code":"41709","system":"gprdproduct"},{"code":"41710","system":"gprdproduct"},{"code":"55138","system":"gprdproduct"},{"code":"30983","system":"gprdproduct"},{"code":"1730","system":"gprdproduct"},{"code":"72291","system":"gprdproduct"},{"code":"29857","system":"gprdproduct"},{"code":"73639","system":"gprdproduct"},{"code":"34580","system":"gprdproduct"},{"code":"76480","system":"gprdproduct"},{"code":"73636","system":"gprdproduct"},{"code":"65152","system":"gprdproduct"},{"code":"19181","system":"gprdproduct"},{"code":"4020","system":"gprdproduct"},{"code":"77915","system":"gprdproduct"},{"code":"69355","system":"gprdproduct"},{"code":"73419","system":"gprdproduct"},{"code":"34470","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-trazodone---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-trazodone---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-trazodone---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
