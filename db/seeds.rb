# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 1. Seed the topics


topics = Topic.create([
	 { :name => "Atrial fibrillaiton" },
	 { :name => "Heart failure" },
	 { :name => "Hypertension" },
	 { :name => "Aortic stenosis" }
 ])

# Core Medical Training curriculum 2011

# topics = Topic.create([
# 	{ name: "Cardio-Respiratory Arrest"}
# 	{ name: "Shocked patient"}
# 	{ name: "Unconscious Patient"}
#  	{ name: "Anaphylaxis"}
#  	{ name: "Abdominal pain"}
#  	{ name: "Acute back pain"}
#  	{ name: "Blackout / Collapse"}
#  	{ name: "Breathlessness"}
#  	{ name: "Chest pain"}
#  	{ name: "Confusion (acute) / Delirium"}
#  	{ name: "Cough"}
#  	{ name: "Diarrhoea"}
#  	{ name: "Falls"}
#  	{ name: "Fever"}
#  	{ name: "Fits / Seizure"}
#  	{ name: "Haematemesis & Melaena"}
#  	{ name: "Jaundice"}
#  	{ name: "Limb Pain & Swelling"}
#  	{ name: "Palpitations"}
#  	{ name: "Poisoning"}
#  	{ name: "Rash"}
#  	{ name: "Vomiting & Nausea"}
#  	{ name: "Weakness & Paralysis"}
# 	])




