# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Charity.create(
			name: 					"Doctors Without Borders, USA",
			description: 			"Doctors Without Borders, USA (DWB-USA) was founded in 1990 in New York City to raise funds, create awareness, recruit field staff, and advocate with the United Nations and US government on humanitarian concerns. Doctors Without Borders/Médecins Sans Frontières (MSF) is an international medical humanitarian organization that provides aid in nearly 60 countries to people whose survival is threatened by violence, neglect, or catastrophe, primarily due to armed conflict, epidemics, malnutrition, exclusion from health care, or natural disasters. In 2007, MSF-USA raised $152.1 million and sent 200 aid workers to work overseas.",
			filter_flags: 			"",
			geographic_region: 		"World",
			area_of_impact: 		"Medical Care",
			percent_of_overhead: 	 3,
			religious_affiliation: 	"None",
			how_to_donate: 			"https://donate.doctorswithoutborders.org/onetime.cfm",
			charity_image: 			"http://www.magicsandwichshow.com/wp-content/uploads/2012/07/MSF_dual_English_CMYK.jpg",
			charity_homepage: 		"http://www.doctorswithoutborders.org/")


Charity.create(
			name: 					"American Red Cross",
			description: 			"Since its founding in 1881 by visionary leader Clara Barton, the American Red Cross has been the nation's premier emergency response organization. As part of a worldwide movement that offers neutral humanitarian care to the victims of war, the American Red Cross distinguishes itself by also aiding victims of devastating natural disasters. Over the years, the organization has expanded its services, always with the aim of preventing and relieving suffering. Today, in addition to domestic disaster relief, the American Red Cross offers compassionate services in five other areas: community services that help the needy; support and comfort for military members and their families; the collection, processing and distribution of lifesaving blood and blood products; educational programs that promote health and safety; and international relief and development programs.",
			filter_flags: 			"",
			geographic_region: 		"World",
			area_of_impact: 		"Medical Care",
			percent_of_overhead: 	 4,
			religious_affiliation: 	"None",
			how_to_donate: 			"https://www.redcross.org/quickdonate/index.jsp?campname=donate&campmedium=aspot_unassigned",
			charity_image: 			"http://redcrosseastma.files.wordpress.com/2012/05/banner_high.jpg",
			charity_homepage: 		"http://www.redcross.org/")

Charity.create(
			name: 					"The Nature Conservancy",
			description: 			"The Nature Conservancy is a leading conservation organization working around the world to protect ecologically important lands and waters for nature and people. Since our founding in 1951 we have protected more than 119 million acres of land and 5,000 miles of rivers worldwide - and we operate more than 100 marine conservation projects globally. We have more than one million members. We work in all 50 states and more than 30 countries - protecting habitats from grasslands to coral reefs, from Australia to Alaska to Zambia. We address threats to conservation involving climate change, fire, fresh water, forests, invasive species, and marine ecosystems. We use a science-based approach, aided by our more than 500 staff scientists, and we pursue non-confrontational, pragmatic solutions to conservation challenges.",
			filter_flags: 			"",
			geographic_region: 		"USA",
			area_of_impact: 		"Nature",
			percent_of_overhead: 	 9,
			religious_affiliation: 	"None",
			how_to_donate: 			"https://support.nature.org/site/Donation2?10420.donation=form1&df_id=10420&intc=nature.tnav.button",
			charity_image: 			"http://support.nature.org/images/gift-guide/banner-default-v1.jpg",
			charity_homepage: 		"http://www.nature.org/")

Charity.create(
			name: 					"Make A Wish Foundation",
			description: 			"The Make-A-Wish Foundation of Colorado grants the wishes of children with life-threatening medical conditions to enrich the human experience with hope, strength and joy. Since being founded in 1983, the chapter has granted more than 3,300 wishes to eligible Colorado children. The Foundation will consider the wish of any child diagnosed with a life-threatening medical condition who is between the ages of 2-1/2 and 18 and lives anywhere in the state of Colorado. The entire family is included in the child's magical wish. The wish is a time which provides joy, respite and family healing and is a time when the focus is not on the child's illness. The magic we provide by granting a wish gets the whole family out of the hospital and offers them a time of fun and togetherness.",
			filter_flags: 			"",
			geographic_region: 		"USA",
			area_of_impact: 		"Children",
			percent_of_overhead: 	 34,
			religious_affiliation: 	"None",
			how_to_donate: 			"https://wish.org/ways-to-help/giving/donate",
			charity_image: 			"http://www.netdow.tv/public/files/page_theme/10/10254/banner_147.jpg",
			charity_homepage: 		"http://wish.org/")

Charity.create(
			name: 					"Michael J. Fox Foundation for Parkinson's Research",
			description: 			"The Michael J. Fox Foundation for Parkinson's Research is dedicated to finding a cure for Parkinson's disease within the decade through an aggressively funded research agenda and to ensuring the development of improved therapies for those living with Parkinson's today. For The Michael J. Fox Foundation, there is one clear measure of success: delivering patients better treatments and, ultimately, a cure for Parkinson's disease. We've developed a targeted approach to research funding that helps us identify and prioritize the patient-relevant science that will allow us to reach our goal. Since we began in 2000, the Foundation has funded over $149 million in Parkinson's research, either directly or through partnerships.",
			filter_flags: 			"",
			geographic_region: 		"USA",
			area_of_impact: 		"Research",
			percent_of_overhead: 	 12,
			religious_affiliation: 	"None",
			how_to_donate: 			"https://www.michaeljfox.org/get-involved/donation.php?fr_id=2380",
			charity_image: 			"http://www.socialbrite.org/wp-content/uploads/2011/12/MichaelJFox.jpg",
			charity_homepage: 		"https://www.michaeljfox.org/")

Charity.create(
			name: 					"Wounded Warrior Project",
			description: 			"The mission of Wounded Warrior Project is to honor and empower wounded warriors. Our purpose is: to raise awareness and enlist the public's aid for the needs of severely injured service men and women; to help severely injured service members aid and assist each other; and to provide unique, direct programs and services to meet the needs of severely injured service members.",
			filter_flags: 			"",
			geographic_region: 		"USA",
			area_of_impact: 		"Muilitary",
			percent_of_overhead: 	 18,
			religious_affiliation: 	"None",
			how_to_donate: 			"https://support.woundedwarriorproject.org/default.aspx?tsid=66&campaignSource=WEBSITE&source=ONLINE",
			charity_image: 			"http://2.bp.blogspot.com/-o7fZCZ0ZxF4/UZ_LICynthI/AAAAAAAAFrA/gKlQUIxqcOQ/s1600/WWPBANNER.jpg",
			charity_homepage: 		"http://www.woundedwarriorproject.org/")

User.create!(
	      :oauth_provider => "",
	      :oauth_uid => "",
	      :oauth_token => "",
	      :oauth_expires_at => "",
	      :first_name => "Site",
	      :last_name => "Admin",
	      :gender => "",
	      :picture => "https://lh6.ggpht.com/XtmMCLDlDBVuAr9MTuPvSfxZFdqRPEQw_WzWnp2R0PE9uKzAfBlm-z9JbqjqzlaP00__=w300",
	      :email => "Admin@Chelp.com",
	      :password => "ChelpAdmin",
	      :permissions => "Admin")








