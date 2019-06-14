# Mangling a wordlist using hashcat.
hashcat -r "${rule_file}" --stdout "${in_file}" > "${out_file}"

# Cracking a hash dump using hashcat.
hashcat --force -m 0 -a 0 "${hash_file}" "${att_file}"
