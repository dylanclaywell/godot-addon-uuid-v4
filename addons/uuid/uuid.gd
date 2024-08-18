extends Node

# This addon generates pseudo-random version 4 UUIDs.

# This function generates UUID v4 ids based on RFC 4122
# https://datatracker.ietf.org/doc/html/rfc4122
func generate_id():
	var uuid = "00000000000000000000000000000000"

	for n in 32:
		# set the version (in this case, v4)
		if n == 12:
			uuid[n] = "4"
			continue

		# set the variant (in this case, DCE 1.1/IEC 11578:1996)
		if n == 16:
			uuid[n] = "%x" % randi_range(8, 11)
			continue

		# every other character can be random in UUID v4
		uuid[n] = "%x" % randi_range(0, 15)

	# these are just named by convention for time-based UUIDs; this isn't actually a time-based UUID but I didn't really know what else to call them.
	var low_time = uuid.substr(0, 8)
	var mid_time = uuid.substr(8, 4)
	var version = uuid.substr(12, 4)
	var variant = uuid.substr(16, 4)
	var node = uuid.substr(20, 12)

	return "%s-%s-%s-%s-%s" % [low_time, mid_time, version, variant, node]
