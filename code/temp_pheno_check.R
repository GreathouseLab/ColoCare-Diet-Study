met = read.delim("map_minimal.txt", row.names = 1)
met = met[,4:5]

tmet = read.csv("LGreathouse_Priority_Data.csv")
keep = c("participant_id", "b_recurrence_new_mets_yn", "o_vital_status")
tmet = tmet[,names(tmet) %in% keep]
names(tmet)[1] = "ColocareID"
#most of the numeric IDs are found in both files (i.e. I think i am using the correct merge key)
table(met$ColocareID %in% tmet$ColocareID)
#but it appears that the patients that are in both do not have the phenotype data (i.e. they are blanks in these field in the original file)
tmet$o_vital_status[match(met$ColocareID, tmet$ColocareID)]
tmet$b_recurrence_new_mets_yn[match(met$ColocareID, tmet$ColocareID)]
