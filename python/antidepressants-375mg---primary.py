# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"60449","system":"gprdproduct"},{"code":"63859","system":"gprdproduct"},{"code":"301","system":"gprdproduct"},{"code":"48199","system":"gprdproduct"},{"code":"73667","system":"gprdproduct"},{"code":"74","system":"gprdproduct"},{"code":"59563","system":"gprdproduct"},{"code":"57926","system":"gprdproduct"},{"code":"53326","system":"gprdproduct"},{"code":"75525","system":"gprdproduct"},{"code":"71257","system":"gprdproduct"},{"code":"34525","system":"gprdproduct"},{"code":"71059","system":"gprdproduct"},{"code":"32121","system":"gprdproduct"},{"code":"66437","system":"gprdproduct"},{"code":"63268","system":"gprdproduct"},{"code":"56457","system":"gprdproduct"},{"code":"51699","system":"gprdproduct"},{"code":"56662","system":"gprdproduct"},{"code":"31826","system":"gprdproduct"},{"code":"1222","system":"gprdproduct"},{"code":"68876","system":"gprdproduct"},{"code":"10948","system":"gprdproduct"},{"code":"61657","system":"gprdproduct"},{"code":"60895","system":"gprdproduct"},{"code":"71806","system":"gprdproduct"},{"code":"43203","system":"gprdproduct"},{"code":"470","system":"gprdproduct"},{"code":"34058","system":"gprdproduct"},{"code":"62681","system":"gprdproduct"},{"code":"43968","system":"gprdproduct"},{"code":"45806","system":"gprdproduct"},{"code":"70353","system":"gprdproduct"},{"code":"73658","system":"gprdproduct"},{"code":"51361","system":"gprdproduct"},{"code":"68050","system":"gprdproduct"},{"code":"42734","system":"gprdproduct"},{"code":"19186","system":"gprdproduct"},{"code":"77497","system":"gprdproduct"},{"code":"2525","system":"gprdproduct"},{"code":"77707","system":"gprdproduct"},{"code":"59923","system":"gprdproduct"},{"code":"39359","system":"gprdproduct"},{"code":"67728","system":"gprdproduct"},{"code":"58837","system":"gprdproduct"},{"code":"13237","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-375mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-375mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-375mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
