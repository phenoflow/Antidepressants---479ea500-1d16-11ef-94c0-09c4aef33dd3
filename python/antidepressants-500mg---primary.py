# Matthew J Carr, Sarah Steeg, Roger T Webb, Nav Kapur, Carolyn A Chew-Graham, Kathryn M Abel, Holly Hope, Matthias Pierce, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"6274","system":"gprdproduct"},{"code":"34421","system":"gprdproduct"},{"code":"4422","system":"gprdproduct"},{"code":"70521","system":"gprdproduct"},{"code":"35445","system":"gprdproduct"},{"code":"65213","system":"gprdproduct"},{"code":"38274","system":"gprdproduct"},{"code":"63827","system":"gprdproduct"},{"code":"77474","system":"gprdproduct"},{"code":"34107","system":"gprdproduct"},{"code":"69317","system":"gprdproduct"},{"code":"71031","system":"gprdproduct"},{"code":"77538","system":"gprdproduct"},{"code":"7693","system":"gprdproduct"},{"code":"34274","system":"gprdproduct"},{"code":"4682","system":"gprdproduct"},{"code":"59820","system":"gprdproduct"},{"code":"59931","system":"gprdproduct"},{"code":"66919","system":"gprdproduct"},{"code":"2880","system":"gprdproduct"},{"code":"34634","system":"gprdproduct"},{"code":"7328","system":"gprdproduct"},{"code":"62693","system":"gprdproduct"},{"code":"29339","system":"gprdproduct"},{"code":"45318","system":"gprdproduct"},{"code":"34003","system":"gprdproduct"},{"code":"12125","system":"gprdproduct"},{"code":"34251","system":"gprdproduct"},{"code":"63481","system":"gprdproduct"},{"code":"3351","system":"gprdproduct"},{"code":"40396","system":"gprdproduct"},{"code":"14398","system":"gprdproduct"},{"code":"65804","system":"gprdproduct"},{"code":"67757","system":"gprdproduct"},{"code":"32401","system":"gprdproduct"},{"code":"78221","system":"gprdproduct"},{"code":"55488","system":"gprdproduct"},{"code":"34182","system":"gprdproduct"},{"code":"41597","system":"gprdproduct"},{"code":"75952","system":"gprdproduct"},{"code":"58664","system":"gprdproduct"},{"code":"75405","system":"gprdproduct"},{"code":"8332","system":"gprdproduct"},{"code":"33624","system":"gprdproduct"},{"code":"69725","system":"gprdproduct"},{"code":"12309","system":"gprdproduct"},{"code":"61842","system":"gprdproduct"},{"code":"4690","system":"gprdproduct"},{"code":"46970","system":"gprdproduct"},{"code":"53161","system":"gprdproduct"},{"code":"77227","system":"gprdproduct"},{"code":"2617","system":"gprdproduct"},{"code":"6442","system":"gprdproduct"},{"code":"4874","system":"gprdproduct"},{"code":"12221","system":"gprdproduct"},{"code":"2531","system":"gprdproduct"},{"code":"3925","system":"gprdproduct"},{"code":"55289","system":"gprdproduct"},{"code":"54686","system":"gprdproduct"},{"code":"62927","system":"gprdproduct"},{"code":"64330","system":"gprdproduct"},{"code":"5073","system":"gprdproduct"},{"code":"69712","system":"gprdproduct"},{"code":"67730","system":"gprdproduct"},{"code":"35723","system":"gprdproduct"},{"code":"45915","system":"gprdproduct"},{"code":"12111","system":"gprdproduct"},{"code":"53187","system":"gprdproduct"},{"code":"69898","system":"gprdproduct"},{"code":"3196","system":"gprdproduct"},{"code":"73363","system":"gprdproduct"},{"code":"58723","system":"gprdproduct"},{"code":"41609","system":"gprdproduct"},{"code":"35391","system":"gprdproduct"},{"code":"42387","system":"gprdproduct"},{"code":"78324","system":"gprdproduct"},{"code":"8174","system":"gprdproduct"},{"code":"79163","system":"gprdproduct"},{"code":"3355","system":"gprdproduct"},{"code":"488","system":"gprdproduct"},{"code":"1888","system":"gprdproduct"},{"code":"65445","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antidepressants-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antidepressants-500mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antidepressants-500mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antidepressants-500mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
