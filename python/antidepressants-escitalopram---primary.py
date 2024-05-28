# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"603","system":"gprdproduct"},{"code":"52408","system":"gprdproduct"},{"code":"34586","system":"gprdproduct"},{"code":"41528","system":"gprdproduct"},{"code":"55033","system":"gprdproduct"},{"code":"49165","system":"gprdproduct"},{"code":"34603","system":"gprdproduct"},{"code":"69571","system":"gprdproduct"},{"code":"60888","system":"gprdproduct"},{"code":"74993","system":"gprdproduct"},{"code":"4770","system":"gprdproduct"},{"code":"53787","system":"gprdproduct"},{"code":"56355","system":"gprdproduct"},{"code":"72124","system":"gprdproduct"},{"code":"54827","system":"gprdproduct"},{"code":"71005","system":"gprdproduct"},{"code":"75075","system":"gprdproduct"},{"code":"34498","system":"gprdproduct"},{"code":"20152","system":"gprdproduct"},{"code":"60839","system":"gprdproduct"},{"code":"59650","system":"gprdproduct"},{"code":"32848","system":"gprdproduct"},{"code":"45286","system":"gprdproduct"},{"code":"52100","system":"gprdproduct"},{"code":"75697","system":"gprdproduct"},{"code":"59193","system":"gprdproduct"},{"code":"34466","system":"gprdproduct"},{"code":"43519","system":"gprdproduct"},{"code":"45304","system":"gprdproduct"},{"code":"36746","system":"gprdproduct"},{"code":"63441","system":"gprdproduct"},{"code":"70790","system":"gprdproduct"},{"code":"34499","system":"gprdproduct"},{"code":"34413","system":"gprdproduct"},{"code":"513","system":"gprdproduct"},{"code":"33720","system":"gprdproduct"},{"code":"34436","system":"gprdproduct"},{"code":"42660","system":"gprdproduct"},{"code":"64423","system":"gprdproduct"},{"code":"45223","system":"gprdproduct"},{"code":"46926","system":"gprdproduct"},{"code":"476","system":"gprdproduct"},{"code":"75702","system":"gprdproduct"},{"code":"57936","system":"gprdproduct"},{"code":"52824","system":"gprdproduct"},{"code":"63916","system":"gprdproduct"},{"code":"46977","system":"gprdproduct"},{"code":"56292","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-escitalopram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-escitalopram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-escitalopram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
