echo "Preparing Trendi for Onion ..."
./prepare_vert_for_onion.sh ../Podatki/Trendi-korpus/trendi_onion.vert ../Podatki/Trendi-korpus/trendi_onion_prepared.vert

echo "Performing near-deduplication on Trendi ..."
./onion_deduplicate.sh ../Podatki/Trendi-korpus/trendi_onion_prepared.vert ../Podatki/Trendi-korpus/trendi_dedup.vert

echo "Performing near-deduplication on HPLT ..."
./onion_deduplicate.sh ../Podatki/hplt/sl_onion.vert ../Podatki/hplt/sl_near_dedup.vert

echo "Preparing MetaFida for Onion ..."
./prepare_vert_for_onion.sh ../Podatki/mfida10_onion.vert ../Podatki/mfida10_onion_prepared.vert
echo "Preparing KAS for Onion ..."
./prepare_vert_for_onion.sh ../Podatki/kas.vert ../Podatki/kas_onion_prepared.vert
echo "Preparing MaCoCu for Onion ..."
./prepare_vert_for_onion.sh ../Podatki/dedup_sl/macocu_sl/macocu_sl.vert ../Podatki/dedup_sl/macocu_sl/macocu_sl_onion_prepared.vert
echo "Preparing MC4 for Onion ..."
./prepare_vert_for_onion.sh ../Podatki/dedup_sl/mc4_sl/mc4_sl.vert ../Podatki/dedup_sl/mc4_sl/mc4_sl_onion_prepared.vert
echo "Preparing CC100 for Onion ..."
./prepare_vert_for_onion.sh ../Podatki/dedup_sl/cc100_sl/cc100_sl.vert ../Podatki/dedup_sl/cc100_sl/cc100_sl_onion_prepared.vert

echo "Merging all corpora into one file ..."
./merge_for_onion.sh
