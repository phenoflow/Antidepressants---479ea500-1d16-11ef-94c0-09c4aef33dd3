# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"76857","system":"gprdproduct"},{"code":"8585","system":"gprdproduct"},{"code":"742","system":"gprdproduct"},{"code":"40160","system":"gprdproduct"},{"code":"14578","system":"gprdproduct"},{"code":"68933","system":"gprdproduct"},{"code":"65809","system":"gprdproduct"},{"code":"78843","system":"gprdproduct"},{"code":"66412","system":"gprdproduct"},{"code":"73298","system":"gprdproduct"},{"code":"4726","system":"gprdproduct"},{"code":"27733","system":"gprdproduct"},{"code":"79383","system":"gprdproduct"},{"code":"54792","system":"gprdproduct"},{"code":"77488","system":"gprdproduct"},{"code":"79628","system":"gprdproduct"},{"code":"64785","system":"gprdproduct"},{"code":"5832","system":"gprdproduct"},{"code":"59694","system":"gprdproduct"},{"code":"74753","system":"gprdproduct"},{"code":"69420","system":"gprdproduct"},{"code":"47945","system":"gprdproduct"},{"code":"78654","system":"gprdproduct"},{"code":"67272","system":"gprdproduct"},{"code":"48185","system":"gprdproduct"},{"code":"60538","system":"gprdproduct"},{"code":"53648","system":"gprdproduct"},{"code":"7122","system":"gprdproduct"},{"code":"69005","system":"gprdproduct"},{"code":"56209","system":"gprdproduct"},{"code":"65618","system":"gprdproduct"},{"code":"40165","system":"gprdproduct"},{"code":"74907","system":"gprdproduct"},{"code":"12192","system":"gprdproduct"},{"code":"1575","system":"gprdproduct"},{"code":"79381","system":"gprdproduct"},{"code":"43250","system":"gprdproduct"},{"code":"68052","system":"gprdproduct"},{"code":"79590","system":"gprdproduct"},{"code":"6255","system":"gprdproduct"},{"code":"1397","system":"gprdproduct"},{"code":"55537","system":"gprdproduct"},{"code":"10083","system":"gprdproduct"},{"code":"5187","system":"gprdproduct"},{"code":"71543","system":"gprdproduct"},{"code":"79275","system":"gprdproduct"},{"code":"70405","system":"gprdproduct"},{"code":"62688","system":"gprdproduct"},{"code":"79008","system":"gprdproduct"},{"code":"77377","system":"gprdproduct"},{"code":"6488","system":"gprdproduct"},{"code":"34587","system":"gprdproduct"},{"code":"23497","system":"gprdproduct"},{"code":"76187","system":"gprdproduct"},{"code":"13151","system":"gprdproduct"},{"code":"70728","system":"gprdproduct"},{"code":"67496","system":"gprdproduct"},{"code":"63403","system":"gprdproduct"},{"code":"76772","system":"gprdproduct"},{"code":"63370","system":"gprdproduct"},{"code":"53543","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-300mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-300mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-300mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
