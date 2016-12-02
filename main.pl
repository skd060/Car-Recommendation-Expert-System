% Expert system should be started from here
main :-
	intro,
	reset_answers,
	find_Car(Car),
	describe(Car), nl.
intro :-
	write('Which New Car should I Buy First?'), nl,
	write('To answer, input the number shown next to each answer, followed by a dot (.)'), nl, nl.

find_Car(Car):-
	car(Car), !.
	
% Store user answers to be able to track his progress
:- dynamic(progress/2).

% Clear stored user progress
% reset_answers must always return true; because retract can return either true
% or false, we fail the first and succeed with the second.
reset_answers :-
	retract(progress(_, _)),
	fail.
reset_answers.

% Rules for the knowledge base
car(honda_fit):-
	why(transport),
	care_about(being_active_doing_things).
	
car(mercedes_cls):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(i_seem_rich),
	hope_you_like_debt(love_it).
	
car(mazda_hyundai_kia):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(i_seem_rich),
	hope_you_like_debt(but_i_dont).

car(jaguar_audi):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(no_i_really_m_rich),
	like_sky(its_okey),
	brand_nob(god_yes).
	
car(lincoln_infiniti):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(no_i_really_m_rich),
	like_sky(its_okey),
	brand_nob(who_cares).
	
car(bentley):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(no_i_really_m_rich),
	like_sky(oh_yeah).
	
car(vw_fiat):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(i_m_weird),
	kind_of_weird(old_school).
	
car(scion_nissan):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(i_m_weird),
	kind_of_weird(kawaii),
	korean_take(nope).
	
car(kia):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(i_m_weird),
	kind_of_weird(kawaii),
	korean_take(why_not).
	
car(mit):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(i_m_weird),
	kind_of_weird(still_those).
	
car(hyundai):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(i_m_weird),
	kind_of_weird(asym).

car(chrysler):-
	why(transport),
	care_about(what_people_think_of_me),
	want_think(i_m_a_gangster_or_something).	
	
car(honda):-
	why(transport),
	care_about(all_the_money_i_dont_have),
	know_broke(disappear).
	
car(ford_chevy_nissan):-
	why(transport),
	care_about(all_the_money_i_dont_have),
	know_broke(fine).
	
car(chevy_ford):-
	why(transport),
	care_about(the_environment),
	run(electricity).
	
car(vwjetta):-
	why(transport),
	care_about(the_environment),
	run(diesel).

car(honda_fcx):-
	why(transport),
	care_about(the_environment),
	run(hinden).	

car(nissan_leaf):-
	why(transport),
	care_about(the_environment),
	run(batteries).	
	
car(bmw):-
	why(transport),
	care_about(my_growing_family),
	cant_parent(cool_car).
	
car(ford_c_max):-
	why(transport),
	care_about(my_growing_family),
	cant_parent(kicking_air).

car(morgan):-
	why(fun),
	fun_for_you(being_osm).

car(porsche):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(six),
	engine(behind_me).
	
car(nissan_gt_r):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(six),
	engine(front).
	
car(bmw_cadalic):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(six),
	engine(back_seat).

car(ferrari_mc):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(eight),
	with_people(zero_one),
	loaded(yes),
	classy_shouty(shouty).
	
car(jaguar_f):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(eight),
	with_people(zero_one),
	loaded(yes),
	classy_shouty(classy).

car(chevrolet):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(eight),
	with_people(zero_one),
	loaded(mean_drunk).

car(bmw_mer_porsche):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(eight),
	with_people(two_three),
	peel_dairy(good),
	axis_allies(axis).

car(cadillac):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(eight),
	with_people(two_three),
	peel_dairy(good),
	axis_allies(allies).

car(maserati):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(eight),
	with_people(two_three),
	peel_dairy(good),
	axis_allies(both).

car(ford_chevy_dodge):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(eight),
	with_people(two_three),
	peel_dairy(fuck).

car(cadillac_cts):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(eight),
	with_people(four_plus).

car(aston):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(tweleve),
	want_stick(yep).

car(srt_audi_lam):-
	why(fun),
	fun_for_you(going_fast),
	cylinder(tweleve),
	many_few(yep).

car(scion_mazda):-
	why(fun),
	fun_for_you(carving),
	cash_situation(notso_hotso).

car(porsche_lotus):-
	why(fun),
	fun_for_you(carving),
	cash_situation(comfort),
	hair_piece(none_of_your_business).

car(porsche_boxster):-
	why(fun),
	fun_for_you(carving),
	cash_situation(comfort),
	hair_piece(nhi).

car(audi_subaru):-
	why(fun),
	fun_for_you(carving),
	cash_situation(comfort),
	hair_piece(nah),
	unpaid_road(sure_do).

car(scion_mazda):-
	why(fun),
	fun_for_you(carving),
	cash_situation(comfort),
	hair_piece(nah),
	unpaid_road(notso_hotso).

car(fiat):-
	why(fun),
	fun_for_you(slow_fast),
	like_noise(bring_noise).

car(mini_ford):-
	why(fun),
	fun_for_you(slow_fast),
	like_noise(keep_down),
	p_excites(plucky).

car(vw_golf):-
	why(fun),
	fun_for_you(slow_fast),
	like_noise(keep_down),
	p_excites(precise).

car(mazda_volvo):-
	why(fun),
	fun_for_you(slow_fast),
	like_noise(keep_down),
	p_excites(practical).

car(mini_ford):-
	why(fun),
	fun_for_you(slow_fast),
	like_noise(keep_down),
	p_excites(punchy).
	
	
% Questions for the knowledge base
question(why) :-
	write('Why do you want to buy car?'), nl.
question(care_about):-
	write('What do you care about?'), nl.
question(want_think):-
	write('What do you want them to think?'),nl.
question(hope_you_like_debt):-
	write('Hope you like DEBT?'),nl.
question(like_sky):-
	write('Do you like the sky?'),nl.
question(brand_nob):-
	write('Are you a brand snob?'),nl.
question(kind_of_weird):-
	write('What kind of weird?'),nl.
question(korean_take):-
	write('How about korean take?'),nl.
question(know_broke):-
	write('What if people know you\'re broke?'),nl.
question(run):-
	write('Run on what?'),nl.
question(cant_parent):-
	write('Can\'t a parent?'),nl.
question(fun_for_you):-
	write('What\'s fun for you?'),nl.
question(cylinder):-
	write('How many Cylinders?'),nl.
question(engine):-
	write('Where do you want your engine?'),nl.
question(with_people):-
	write('How many people are with you?'),nl.
question(loaded):-
	write('Are you loaded?'),nl.
question(classy_shouty):-
	write('Classy or Shouty?'),nl.
question(peel_dairy):-
	write('Want to peel out of a dairy queen?'),nl.
question(axis_allies):-
	write('Axis or Allies?'),nl.
question(want_stick):-
	write('Want a stick?'),nl.
question(many_few):-
	write('Is 12 too many but 8 too few?'),nl.
question(cash_situation):-
	write('How\'s your cash situation?'),nl.
question(hair_piece):-
	write('Have a hair piece?'),nl.
question(unpaid_road):-
	write('Ever drive on unpaved roads?'),nl.
question(like_noise):-
	write('How much do you like noise?'),nl.
question(p_excites):-
	write('What \"P\" excites you?'),nl.

% Answers for the knowledge base
answer(transport) :-
	write('Transport.').
answer(being_active_doing_things):-
	write('Being active /Doing things.'),nl.
answer(what_people_think_of_me):-
	write('What people think of me.'),nl.
answer(i_seem_rich):-
	write('I seem rich.'),nl.
answer(love_it):-
	write('Love It'),nl.
answer(but_i_dont):-
	write('But I Don\'t.'),nl.
answer(no_i_really_m_rich):-
	write('No i really am rich.'),nl.
answer(its_okey):-
	write('EH, IT\'s okay.'),nl.
answer(oh_yeah):-
	write('Oh yeah.'),nl.
answer(god_yes):-
	write('God yes.'),nl.
answer(who_cares):-
	write('Nah, Who cares.'),nl.
answer(i_m_weird):-
	write('I am weird.'),nl.
answer(old_school):-
	write('Old school.'),nl.
answer(kawaii):-
	write('KAWAII.'),nl.
answer(nope):-
	write('I am not sure.'),nl.
answer(why_not):-
	write('Sure, Why not.'),nl.
answer(still_those):-
	write('They still sell those.'),nl.
answer(asym):-
	write('Asymmetric.'),nl.
answer(i_m_a_gangster_or_something):-
	write('I am gangster or something.'),nl.
answer(all_the_money_i_dont_have):-
	write('All the money i don\'t have.'),nl.
answer(fine):-
	write('Fine,Whatever.'),nl.
answer(disappear):-
	write('I\'ll disappear.'),nl.
answer(the_environment):-
	write('The environment.'),nl.
answer(electricity):-
	write('Some electricity.'),nl.
answer(diesel):-
	write('Diesel.'),nl.
answer(hinden):-
	write('That stuff that worked so well in the hiddenberg.'),nl.
answer(batteries):-
	write('Batteries.'),nl.
answer(my_growing_family):-
	write('My growing family.'),nl.
answer(cool_car):-
	write('Have a cool car.'),nl.
answer(kicking_air):-
	write('Open the hatch by kicking the air.'),nl.
answer(fun) :-
	write('Fun.'),nl.
answer(being_osm):-
	write('Being awesome.'),nl.
answer(going_fast):-
	write('Going fast.'),nl.
answer(six):-
	write('6.'),nl.
answer(behind_me):-
	write('Behind me.'),nl.
answer(front):-
	write('In front of me.'),nl.
answer(back_seat):-
	write('I forgot, i need a usableback seat.'),nl.
answer(eight):-
	write('8.'),nl.
answer(zero_one):-
	write('0-1.'),nl.
answer(yes):-
	write('Why,yes.'),nl.
answer(mean_drunk):-
	write('Only if you mean drunk.'),nl.
answer(shouty):-
	write('Shouty.'),nl.
answer(classy):-
	write('Classy.'),nl.
answer(two_three):-
	write('2-3.'),nl.
answer(good):-
	write('Um,I\'m good.'),nl.
answer(fuck):-
	write('Fuck yeah.'),nl.
answer(axis):-
	write('Axis.'),nl.
answer(allies):-
	write('Allies.'),nl.
answer(both):-
	write('Both.'),nl.
answer(four_plus):-
	write('4+.'),nl.
answer(tweleve):-
	write('12.'),nl.
answer(carving):-
	write('Carving curves.'),nl.
answer(notso_hotso):-
	write('NOTSO HOTSO.'),nl.
answer(comfort):-
	write('I\'m comfortable.'),nl.
answer(nhi):-
	write('NO!'),nl.
answer(nah):-
	write('NAH.'),nl.
answer(none_of_your_business):-
	write('None of your business.'),nl.
answer(sure_do):-
	write('Sure Do.'),nl.

answer(slow_fast):-
	write('Going slow,feeling fast.'),nl.
answer(bring_noise):-
	write('Bring the noise.'),nl.
answer(keep_down):-
	write('Shh,Keep it down.'),nl.
answer(plucky):-
	write('Plucky.'),nl.
answer(precise):-
	write('Precise.'),nl.
answer(practical):-
	write('Practical.'),nl.
answer(punchy):-
	write('Punchy.'),nl.
answer(yep):-
	write('Yep.'),nl.
	
% Car descriptions for the knowledge base
describe(mercedes_cls):-
	write('MERCEDES CLS'),nl,
	write(' The Mercedes CLS is a stylish, quick and comfortable executive saloon with room for four passengers and their luggage. The Mercedes CLS is a sleek, low-slung four-door luxury coupe that\'s designed to blend desirability with practicality.'),nl,nl,
	write('AUDI A7'),nl,
	write('A fastback roofline gives the A7 both flair and hatchback practicality, while the luxury cabin pampers occupants. Standard all-wheel drive helps get all of the supercharged 3.0-liter V-6\'s 333 hp to the ground through an eight-speed automatic. A taut suspension and confident brakes round out the A7’s performance credentials. Smartphone integration with Apple CarPlay and Android Auto is standard. Night vision, automated emergency braking, and adaptive cruise control are optional.').

describe(honda_fit) :-
	write('HONDA FIT'), nl,
	write('A flexible interior, an efficient powertrain, and agreeable pricing make the Fit an easy recommendation. Its firm ride makes it fun to drive, while light steering makes it great for in-town driving—icing on the cake. The handy multiconfigurable interior offers more cargo room than the Fit\'s size implies, too. The 130-hp 1.5-liter engine drives the front wheels through a six-speed manual or a CVT. Uplevel EX and EX-L models get a 7.0-inch touchscreen infotainment system; navigation is optional.'),nl,nl,
	write('FORD FOCUS'),nl,
	write('A European-developed chassis gives even the base Focus a rare blend of agility and accuracy, making it enjoyable to drive even when compared with newer competitors. A 160-hp 2.0-liter four-cylinder is standard, while an optional 123-hp 1.0-liter turbo three-cylinder with auto stop/start is aimed at extra efficiency. Both are available with either an automatic or manual transmission. We recorded 25 mpg overall with both a 2.0-liter five-speed manual model and a 1.0-liter with an automatic.').

describe(mazda_hyundai_kia):-
	write('MAZDA6'),nl,
	write('If you think all family sedans are created equal, you\'re in for a surprise with the nimble and curvaceous Mazda 6. It lives up to its racy looks, too—a precision-tuned suspension and driver-focused cabin make it the ideal choice for those who enjoy driving. A 184-hp 2.5-liter four teams with either a six-speed manual or a six-speed automatic. The seven-inch infotainment system is easy to use, and optional automated emergency braking and adaptive cruise control provide an extra level of safety.'),nl,nl,
	write('HYUNDAI GENESIS'),nl,
	write('The Hyundai Genesis  is a full-size four-door, five passenger, rear-wheel-drive. '),nl,nl,
	write('KIA OPTIMA'),nl,
	write('The 2016 Kia Optima truly challenges midsize sedan conventions with a fusion of bold style, grin-inducing performance, and advanced technology.').

describe(jaguar_audi) :-
	write('JAGUAR XJ'),nl,
	write('As the only Brit in a segment ruled by Germans, the Jaguar XJ has a lot on its shoulders—a weight it bears remarkably well. The interior is appropriately swanky for the XJ\'s place at the top of the Jaguar lineup, with quality materials and luxe styling. A 3.0-liter supercharged V-6 with 340 hp comes standard; a 470-hp V-8 is available. We still have some niggles with build quality and the infotainment system, but even so, the XJ is a lovely ride. The racy XJ-R is reviewed separately.
'),nl,nl,
	write('AUDI A8'),nl,
	write('The Audi A8 is a four-door, full size, luxury sedan manufactured and marketed by the German automaker Audi since 1994.').

describe(lincoln_infiniti):-
	write('LINCOLN MKZ'),nl,
	write('The Lincoln MKZ, is a four-door, five passenger mid size luxury sedan manufactured by Ford.'),nl,nl,
	write('INFINTI M37'),nl,
	write('There are four flavors of the new M. The base $47,115 M37 with its 330-hp, 3.7-liter V-6 and the all-wheel-drive $49,265 M37x are two of them. The M56 with a direct-injection 420-hp, 5.6-liter V-8 starts at $58,415, and the all-wheel-drive M56x begins at $60,915. Although the prices place it just above the similarly positioned Lexus GS, the newer Infiniti offers more horsepower and a seven-speed automatic to the Lexus\'s six-speed.').

describe(bentley):-
	write('BENTLEY CONTINENTAL GT CONVERTIBLE'),nl,
	write('The new Bentley Continental GT Convertible offers the same enhancements as its coupe stable-mate, coupled with the sheer exhilaration of open-top driving.').

describe(vw_fiat):-
	write('VW BEETLE'),nl,
	write('The Volkswagen Beetle is a two-door, four passenger, rear-engine economy car manufactured  and marketed by German automaker Volkswagen. '),nl,nl,
	write('FIAT 500'),nl,
	write('The Fiat 500 is a rear-engine two-door, four passenger city car manufactured and marketed by Fiat Automobiles.').

describe(scion_nissan):-
	write('SCION iQ'),nl,
	write('The 2016 Scion iQ is a two-door, four-seat hatchback. It is available in one trim and comes with a 1.3-liter four-cylinder engine, a continuously variable transmission (CVT) and front-wheel drive.'),nl,nl,
	write('NISSAN CUBE'),nl,
	write('The Nissan Cube is a compact four-door hatchback wagon. A 1.8-liter four-cylinder engine sends 122 horsepower to the front wheels via a six-speed manual transmission or a CVT. Fuel economy tops out around 30 mpg, a poor performance by segment standards.').

describe(kia):-
	write('KIA SOUL'),nl,
	write('The base Soul has a 1.6-liter four-cylinder engine, while Plus and Exclaim trims have a more powerful 2.0-liter four-cylinder engine. A six-speed manual transmission is standard and a six-speed automatic is optional.').

describe(mit):-
	write('MITSUBISHI LANCER'),nl,
	write('The Mitsubishi Lancer is the brand\'s second smallest offering, a compact four-door sedan that sits above the diminutive Mirage in the company\'s limited lineup. ').

describe(hyundai):-
	write('HYUNDAI VELOSTER'),nl,
	write('For the 2016 Hyundai Veloster, a limited-edition turbocharged Rally Edition debuts with Rays wheels, matte blue paint and sportier suspension tuning than the Veloster R-Spec. The Veloster Turbo gets a new seven-speed automated manual transmission and new seats. An upgraded navigation system with HD radio, second-generation Blue Link and Apple Siri Eyes Free integration is available for base and Turbo models.').

describe(chrysler):-
	write('CHRYSLER 300'),nl,
	write('Provides an exceptionally supple and quiet ride over bumps and rough pavement; available V8 engine is well suited to the car\'s personality; upscale look and feel of the cabin; touchscreen technology interface is easy to use; choice of available premium sound systems; available all-wheel drive.').

describe(honda):-
	write('HONDA CIVIC'),nl,
	write('The front-wheel-drive 2016 Honda Civic comes with a four-cylinder engine, but the exact type varies depending on the trim level you pick. ').

describe(ford_chevy_nissan):-
	write('FORD FIESTA'),nl,
	write('Though the Fiesta might be small, it is still mighty fierce. An engaging five-speed manual comes standard; the optional six-speed dual-clutch sacrifices little in terms of driving fun. Available as a four-door sedan or five-door hatchback, its tight rear seat and scant standard equipment shouldnt be a deal-breaker. Judiciously equipped with options like Sync 3 infotainment and the 123-hp turbo three-cylinder,an upgrade from the base 120-hp four-cylinder.this little guy is a pleasure to drive.'),nl,nl,
	write('CHEVY SPARK'),nl,
	write('The Sparks persona is less shocking than its name, but those seeking basic urban transportation will be happy. The 98-hp four-cylinder pairs with a standard five-speed manual or an optional CVT. Being small doesn\'t mean unsafe; with room for four on the inside, there are 10 airbags while lane-departure alert and forward-collision warning are available. Onboard Wi-Fi with 4G LTE are standard, as are Apple CarPlay and Android Auto.'),nl,nl,
	write('NISSAN VERSA NOTE'),nl,
	write('The 2016 Nissan Versa Note is a five-passenger, four-door hatchback offered in five trim levels: S, S Plus, SV, SR and SL. A four-door sedan version of the Versa also is available .').

describe(chevy_ford):-
	write('CHEVY FORD'),nl,
	write('The weight-loss program and high-tech wizardry under the hood pay off with an impressive 17 mpg overall fuel economy from the 2.7-liter turbo V6—edging out the 5.3-liter V8 Chevrolet Silverado by one hay-hauling mpg. (The Ram 1500 diesel still leads the class with 20 mpg overall.) The F-150\'s 2.7- and beefier 3.5-liter turbo-V6 engines provide plenty of punch even at low revs, with quick acceleration and effortless towing ability.'),nl,nl,
	write('FORD FUSION HYBRID'),nl,
	write('Impressive fuel economy; advanced technology and safety features; quiet cabin; eye-catching styling.').

describe(vwjetta):-
	write('VW JETTA SPORTWAGON TDI'),nl,
	write('Mix the goodness of the Golf with the utility of a wagon, and you get the Golf SportWagen—as well as a 10Best award. The standard engine is a 170-hp 1.8-liter turbocharged four-cylinder with front-wheel drive and a five-speed manual transmission; a six-speed automatic and all-wheel drive are optional. The ride is solid and controlled, interior quality is very good, and the front seats are highly supportive. A standard touchscreen infotainment system features Apple CarPlay and Android Auto.').	
	
describe(honda_fcx):-
	write('HONDA FCX'),nl,
	write('The limited-edition FCX Clarity is an electric car that makes its own electricity using a hydrogen-fed fuel cell. Powering the Clarity is a 134-hp electric motor that provides adequate acceleration. Honda hand-picks each customer. To get chosen you must live near a hydrogen refueling station.descraption later').	

describe(nissan_leaf):-
	write('NISSAN LEAF'),nl,
	write('Nissan Leaf Review. The Nissan Leaf is easy, fun and comfortable to drive. Just make sure you can live with the limited range. The Nissan Leaf is an all-electric family hatchback that\'s roughly the same size as a Vauxhall Astra.').		
	
describe(bmw):-
	write('BMW X1'),nl,
	write('The X1 is available with a turbocharged 2.0-litre petrol engine and a range of 2.0-litre diesels, plus buyers can choose between front and four-wheel drive.').		

describe(ford_c_max):-
	write('FORD C-MAX'),nl,
	write('While comfortable and fun to drive, the C-Max’s high EPA-estimated fuel-economy numbers are basically fantasy. A 2.0-liter four and electric motors in the CVT combine for 188 hp; in our testing, the C-Max and the plug-in C-Max Energi got only 32 and 33 mpg, respectively. If a hybrid can\'t top a gas-powered opponent’s fuel economy, then why bother? The Energi\'s EV-only range of 19 miles is inadequate, too. That the C-Max drives much like a conventional hatchback only furthers that point.').

describe(morgan):-
	write('MORGAN 3-WHEELER'),nl,
	write('Just as Larsen intended with the Ace, the 3 Wheeler\'s layout is much like the original Twenties Morgans, with a tubular steel spaceframe using independent front suspension, with a large-capacity V-twin engine across the body. Morgan selected an S&S unit after Harley-Davidson mysteriously pulled out. The S&S X-Wedge is a two-valve, fuel-injected, dry-sump engine, with 56.25 degrees between the cylinders for cooling purposes. It displaces 1,982cc and punches out almost 80bhp and 100lb ft of torque, with peak revs at 5,200rpm.').

describe(porsche):-
	write('PORSCHE 911'),nl,
	write('The 911 debuted in the 1960s and remains at the pinnacle of automobiledom while staying true to its roots as the quintessential sports car. An eager rear-mounted 370-hp, 3.0-liter twin-turbo flat-six powers the rear wheels; S models make 420 hp. A seven-speed manual transmission is standard; all-wheel drive and a seven-speed dual-clutch automatic are options. In coupe, convertible, and Targa form, the 911 is as luxurious as it is sure-footed, making even novices feel like racing legends.').	
	
describe(nissan_gt_r):-
	write('NISSAN GT-R'),nl,
	write('Doesn\'t matter what you call it—GT-R or, more fittingly, Godzilla—Nissan\'s range topper is a supercar-stomping, high-tech dynamo. Its 3.8-liter twin-turbo V-6 makes a mighty 565 hp while a six-speed dual-clutch automatic and all-wheel drive team up to put all that power to the pavement. The GT-R\'s quick steering, rigid structure and adjustable suspension can make even amateurs feel positively heroic from behind the wheel. Want more? Check out the track-ready NISMO-tuned variant with 600 hp.').
	
describe(bmw_cadalic):-
	write('BMW 335i'),nl,
	write('BMW’s superb 3.0-liter turbo straight-six churns up a manly helping of torque that peaks just north of idle, and max horsepower comes on at 5800 rpm. The six emits seductively determined noises when pressed, particularly in Sport mode, and the only way to induce any lagging or lugging is to engage a high gear at low rpm.'),nl,nl,
	write('CADALIC ATS'),nl,
	write('A turbocharged 2.0-liter four-cylinder engine and rear-wheel drive are standard. A 3.6-liter V6 and all-wheel drive are available. The performance-oriented ATS-V features a twin-turbocharged V6. Coupe models come with your choice of a six-speed manual transmission or an eight-speed automatic.').

describe(ferrari_mc):-
	write('FERRARI 458'),nl,
	write('As instruments of pure speed, few cars can touch the 458 Italia and its convertible counterpart, the 458 Spider. Powered by a 562-hp V-8 mated to a seven-speed dual-clutch transmission and riding on an F1-inspired suspension, the mid-engined 458 is as pure a sports car as anything on the road. It looks the part, too, with X-Acto knife styling and an intense, if overwrought, interior. Need to turn up the exclusivity? You\'ll want the 458 Speciale or the 458 Speciale A, with 597 hp.'),nl,nl,
	write('McLAREN MP4-12C'),nl,
	write('With a 4000-rpm spread between torque and horsepower peaks and 17.4 psi of boost on tap, the MP4\'s 3.8-liter engine feels more like a strapping V-10 than a mini V-8.').
	
describe(jaguar_f):-
	write('JAGUAR F-TYPE'),nl,
	write('From its seductively long hood to its steeply raked windshield and wide rear haunches, the F-type is a stunner. Offered as both a coupe and a convertible, it gets a snarling 3.0-liter supercharged V-6 pumping out 340 hp to the rear wheels through a six-speed manual or eight-speed automatic. Racier S models get a boost to 380 hp and offer all-wheel drive with the automatic. Suspension tuning is firm, and the F-type is always eager to play, but the cost is an often harsh ride over bumpy roads.').

describe(chevrolet):-
	write('CHEVROLET CORVETTE STINGRAY'),nl,
	write('The mighty Corvette truly competes with the world’s greatest sports cars, no excuses required. With a 6.2-liter V-8 making 455 hp and 460 lb-ft of torque (an optional sport exhaust is good for 460 hp and 465 lb-ft), an eight-speed automatic is now available in addition to the standard seven-speed manual. The Corvette sheds its unrefined reputation and has an interior befitting its stature. The Grand Sport is a 10Best winner, combining the LT1 V-8 with the Z06\'s bodywork and chassis hardware.').
	
describe(bmw_mer_porsche):-
	write('BMW M5'),nl,
	write('The Good The 2016 BMW M5 is extremely customizable, putting multiple drive, suspension, steering, and transmission modes at the driver\'s fingertips. The 4.4-liter twin-scroll, twin-turbocharged engine boasts 575 horsepower when equipped with the Competition package.'),nl,nl,
	write('MERCEDS E63 AMG'),nl,
	write('Absurd power and blistering acceleration are not the E63\'s only party tricks; thanks to computer magic and an excellent suspension, it’s also quite agile. But oh, that mighty 577-hp 5.5-liter twin-turbo V-8 is a sweetheart of an engine. A seven-speed automatic and all-wheel drive are standard, as are 14-way power-operated and heated/cooled seats. If the sedan isn’t enough, check out the E63 wagon; it\'ll haul your groceries in record time. Note: These models replace the Mercedes-Benz versions.'),nl,nl,
	write('PORSCHE PANAMERA'),nl,
	write('No matter what you think about the Panamera\'s controversial styling, its dynamic abilities are indisputable. Backed by a 440-hp twin-turbo V-6 with an eight-speed dual-clutch automatic and all-wheel drive, we estimate a 0-60 time of 4 seconds. A central tachometer is flanked by two reconfigurable 7-inch screens. A 12.3-inch touchscreen in the center of the dash controls the infotainment system, but in our opinion, the touch points are too small. Look for this new Panamera in early 2017.').

describe(cadillac):-
	write('CADILLAC CTS-V'),nl,
	write('The Good With 640 horsepower on tap, the 2016 Cadillac CTS-V isn\'t just the most powerful Cadillac ever, it\'s also the most powerful car in its class. The V also brings an exceptional level of nimbleness to the table with standard high-performance brakes, magnetic control suspension and a tight chassis.').

describe(maserati):-
	write('MASERATI GHIBLI'),nl,
	write('Say \"gib-lee.\" It\'s named for an African desert wind—and the perfect name for a hot Italian sedan. With its deliciously curved lines, the Ghibli\'s looks are backed up by what’s under the hood. The base setup is a 345-hp, twin-turbo 3.0-liter V-6 and rear-wheel drive; the S performance version has 404 hp and optional all-wheel drive. Both engines have an eight-speed automatic. The interior needs nicer materials, but this desert wind is a breath of fresh air in a world dominated by German sedans.').

describe(ford_chevy_dodge):-
	write('FORD MUSTANG'),nl,
	write('The galloping pony nestled in the grille serves as a reminder that the Mustang is most at home on the open road. Both the coupe and convertible come with your choice of a 300-hp 3.7-liter V-6, a 310-hp 2.3-liter turbo four-cylinder, or a 435-hp 5.0-liter V-8; choose from a six-speed manual or a six-speed automatic. The rear-wheel-drive chassis is eager to attack corners while enabling a smooth ride when cruising. The manua\'s stiff clutch makes it a bit of a chore to drive in heavy traffic.'),nl,nl,
	write('CHEVY CAMARO'),nl,
	write('Gutsy engines, aggressive sheetmetal, and rear-wheel drive are essential for any muscle car, but the Camaro stirs in excellent handling and great steering, too. Available as a coupe or convertible, the base engine is a 275-hp 2.0-liter turbo four; a 335-hp 3.6-liter V-6 and a 455-hp 6.2-liter V-8 are optional. All offer either a six-speed manual or optional eight-speed automatic. The interior, though, is tight and offers limited visibility. The V-6 and V-8 Camaros are 10Best winners for 2017.'),nl,nl,
	write('DODGE CHALLENGER'),nl,
	write('The 2016 Dodge Challenger SXT models are powered by a 3.6-liter V6 that produces 305 hp and 268 pound-feet of torque. Like every Challenger, it is rear-wheel drive. An eight-speed automatic is the only transmission available. ... EPA fuel economy is 18 mpg (15/25) with the automatic and 17 (14/23) with the manual.').
	
describe(cadillac_cts):-
	write('CADILLAC CTS-V WAGON'),nl,
	write('Now this is our kind of Cadillac: It\'s got a supercharged 640-hp 6.2-liter V-8, big Brembo brakes, an eight-speed automatic, and rear-wheel drive. A manual is not offered, but you won\'t care when this brute hits 60 mph in 3.6 seconds and 100 mph just 3.9 seconds later. The steering is accurate yet hefty, while the ride is surprisingly civilized thanks to a magnetorheological suspension. Cadillac claims a top speed of 200 mph and we won\'t argue. This is a supersedan in every sense.').

describe(aston):-
	write('ASTON MARTIN VANTAGE'),nl,
	write('The best way to live out your super-spy fantasy is behind the wheel of an Aston Martin, and the Vantage is the least expensive way to do it. Offered as a coupe or convertible, performance from the V8 Vantage\'s engine is nothing short of brutish, at 420 or 430 hp; six-speed manual and seven-speed automatic transmissions are offered. For speed demons, the V12 Vantage has a turbine-smooth 565-hp 5.9-liter V-12 with either a seven-speed manual or a seven-speed automatic handling shifting duties.').
	
describe(srt_audi_lam):-
	write('SRT VIPER'),nl,
	write('The Viper is both all-American and a true exotic, with lots of curves and bulges in all the right places to let you know it means business. The long nose, bodacious body, and predatory stare give the Viper a menacing look, while its 645-hp, 8.4-liter V-10 can catapult it to 60 mph in about three seconds. For the ultimate track monster, check out the Viper ACR. With all kinds of aero aids, special tires by Kumho and carbon-ceramic brakes, Dodge says it is the fastest Viper on a racetrack.'),nl,nl,
	write('AUDI R8'),nl,
	write('The Audi R8 is a supercar from a dying breed. ... It\'s nimble and agile, while the V10 packs a punch that\'s accompanied by a thrilling V10 soundtrack, especially if you go for the R8 V10 Plus. Audi R8 V10 Plus. When the original Audi R8 launched in 2006, it caused a sensation.'),nl,nl,
	write('LAMBORGHINI GALLARDO'),nl,
	write('The Lamborghini Gallardo LP560-4 looks every inch the supercar, and it has the perfomance to back it up. Peer beneath the car\'s glass engine cover and you\'ll spot the mighty 552bhp 5.2-litre V10 powerplant. Mated to a permanent four-wheel drive system it serves-up scintillating performance, with the Coupe model able to scorch from 0-60mph in just 3.7 seconds, and on to a top speed of 202mph. Such incredible performance needs a suitably spine-tingling sound track – and the Lambo doesn\'t disappoint, with a guttural low-rev bark that turns into an addictive howl as speeds rises.').

describe(scion_mazda):-
	write('SCION FR-S/SUBARU BRZ'),nl,
	write('Offering sports-car agility on a budget, the FR-S features excellent driving dynamics for a manageable price. Only one engine is offered-a 200-hp 2.0-liter flat-four-with a six-speed manual or six-speed automatic. The manual shifts with a solid, no-nonsense feel, while the paddle-shift automatic is quick and responsive. The cabin is cramped and plasticky, but the FR-S is very agile, which endears it to enthusiasts. Scion\'s demise moves the FR-S to the Toyota showroom for 2017 under the name 86.'),nl,nl,
	write('MAZDA MIATA'),nl,
	write('The 2016 Mazda MX-5 Miata is one of the best drivers cars. Fun per dollar, nothing comes close. The Miata is a two door roadster with 155 horsepower and 148 lb-ft of torque, delivered through a 6 speed manual transmission to the rear wheels via an optional limited slip differential.'),nl,nl,
	write('CATERHAM CLASSIC'),nl,
	write('Equipped with modern engines and brakes, plus a kerbweight of (usually) around 550kg, the Seven can scare even the most outrageously powerful supercars - helped in part by modest dimensions and steering that connects direct to your brain. The core range is familiar but there are two new bookend additions; a sweet Suzuki 660cc turbo-engined Seven 160 (80hp but still 0-60mph in 6.5 seconds), and the 620 R, which pumps out 310bhp from a 2.0-litre Duartec in a 500kg car. That\'s 620bhp per tonne, fact fans, and 0-60mph in 2.8 seconds. It\'s quick.').
	
describe(porsche_lotus):-
	write('PORSCHE CAYMAN'),nl,
	write('Despite more powerful turbo fours (there is a base 300-hp 2.0-liter and a 350-hp 2.5-liter in the S) with increased torque, the legendary Porsche flat-six rasp of yore is gone—and we miss it. The car remains perfectly poised as its predecessors. A six-speed manual is standard; a seven-speed automatic is optional. An improved infotainment system with a 7.0-inch touchscreen is standard, too.'),nl,nl,
	write('LOTUS ELISE'),nl,
	write('Lotus has made some subtle tweaks to the Elise exterior in recent years. The front clam now has a much less fussy look, with a clean and simple intake offset against some great-looking LED daytime running lights.While the car\'s looks from the front are still eye-catching.The Elise S, with its supercharged 1.8 litre engine is certainly quick; 0-60 takes just 4.2 seconds.'),nl,nl.

describe(audi_subaru):-
	write('AUDI ALLROAD QUATTRO'),nl,
	write('While the Allroad may not be a hard-core off-roader, as competent all-weather transportation, it hits the mark. Plus, we really like wagons, and with a maximum of 58.5 cu ft of cargo space, the Allroad meets the needs of most buyers. A 252-hp turbo 2.0-liter four teams with a seven-speed dual-clutch automatic; all-wheel drive is standard. It’s a fine highway cruiser and easily tackles country roads thanks to its Offroad mode. And it\'s far more fun to drive than a comparably priced crossover.'),nl,nl,
	write('SUBARU WRX'),nl,
	write('All hopped up with a hood scoop, flared fenders, and a hot-rod engine under the hood, the WRX is an Impreza on steroids. Available only as a sedan, a 268-hp turbo 2.0-liter four and a six-speed manual are standard, as is all-wheel drive. A CVT is optional, but of course the manual is more fun to drive despite its wide ratios. With crisp steering and a quick turn-in, the WRX carves up corners like the rally-inspired beast it is, but the ride is unforgiving over all but the smoothest roads.').

describe(porsche_boxster):-
	write('PORSCHE BOXSTER'),nl,
	write('Continuing to define sports-car excellence, the Boxster is once again a 10Best winner. With turbo four-cylinders (the base is a 300-hp 2.0-liter; the S gets a 350-hp 2.5-liter) that are substantially more powerful and torque-rich—making the Boxster faster—we can\'t help but miss the guttural yowl from Porsche\'s iconic flat-six. Despite these changes, the mid-engine roadster certainly hasn\'t lost its dynamic perfection, which is nearly without equal. A touchscreen infotainment system is optional.').

describe(fiat):-
	write('FIAT 500 ABARTH'),nl,
	write('The tiny 500 goes from pipsqueak to bad-ass as the hot-rod Abarth, the heart of which is a raucous 160-hp turbocharged four-cylinder. A five-speed manual is standard, while a six-speed automatic is optional. The exhaust note is addictive, and thanks to a slammed suspension, the Abarth\'s handling is as feisty as its styling. There is a coupe or sliding-canvas soft top, though in open-air form, it can get a little pricey. Still, the Abarth is a special car with a ton of charisma.').
	
describe(mini_ford):-
	write('MINI COOPER'),nl,
	write('Quirky styling and nimble handling help the Cooper S to inject a dose of excitement into your daily commute. A 189-hp 2.0-liter turbo four-cylinder with a six-speed manual or six-speed automatic provides enough scoot to live up to the car\'s sporting intentions. A five-door model is now offered so that the Cooper S can (almost) make a case for itself as a family car; a JCW version of the three-door boasts a brawnier 228-hp 2.0-liter four, a tuned suspension, and a host of racy styling tweaks.'),nl,nl,
	write('FORD FIESTA ST'),nl,
	write('When the need arises, the Ford Fiesta ST can still be a convenient town car or a stress-free long-hauler. It starts with the engine, which is the 182bhp 1.6 turbo that\'s been available in bigger Fords for a while.').

describe(vw_golf):-
	write('VW GOLF GTI'),nl,
	write('The Golf GTI is the progenitor of the hot-hatch genre, and age has not dulled its abilities—and so we name it a 10Best winner. The base engine is a 210-hp 2.0-liter turbo four with a six-speed manual. A six-speed automatic, an extra-cost option, is almost as much fun as the manual. Choose the Sport model for 10 more horses as well as upgrades to brakes and a torque-sensing limited-slip differential. GTI\'s classic plaid seats come standard, as do agile handling and hatchback practicality.').

describe(mazda_volvo):-
	write('MAZDASPEED3'),nl,
	write('Why is this car grinning? Because it\'s got 263 rip-snortin\' horses behind that big smile. Too bad they’re so unruly. Still, we like its menacing hot-hatch styling with new-for-‘13 black body trim, and its well-equipped interior, which at long last is available with a proper touch-screen navigation system.'),nl,nl,
	write('VOLVO S60'),nl,
	write('Volvo blends sleek Swedish design with the latest in safety technology, proving you can be good-looking and smart. A 240-hp turbo four and an optional 302-hp turbo- and supercharged four offer front-wheel drive. All-wheel drive is offered with a 250-hp turbo five-cylinder or 325-hp turbo inline-six; the Polestar is a hot rod with a 362-hp inline-six. The Cross Country model has 7.9 inches of ground clearance; the Inscription model has a long wheelbase with an extra 3.4 inches of rear legroom.').	

describe(ford_focus):-
	write('FORD FOCUS ST'),nl,
	write('Nitpicking aside, the 2016 Ford Focus ST is a very appealing choice in the so-called \"hot-hatch\" category. ... The higher-performance Focus RS is reviewed separately. The 2016 Ford Focus ST is available solely in the hatchback body style with a manual transmission.').

% Assigns an answer to questions from the knowledge base
why(Answer) :-
	progress(why, Answer).
why(Answer) :-
	\+ progress(why, _),
	ask(why, Answer, [transport, fun]).
	
care_about(Answer) :-
	progress(care_about, Answer).
care_about(Answer):-
	\+ progress(care_about, _),
	ask(care_about,Answer,[being_active_doing_things,what_people_think_of_me,all_the_money_i_dont_have,the_environment,my_growing_family]).
	
want_think(Answer):-
	progress(want_think,Answer).
want_think(Answer):-
	\+ progress(want_think, _),
	ask(want_think,Answer,[i_seem_rich,no_i_really_m_rich,i_m_weird,i_m_a_gangster_or_something]).
	
hope_you_like_debt(Answer):-
	progress(hope_you_like_debt,Answer).
hope_you_like_debt(Answer):-
	\+ progress(hope_you_like_debt, _),
	ask(hope_you_like_debt,Answer,[love_it,but_i_dont]).
	
like_sky(Answer) :-
	progress(like_sky, Answer).
like_sky(Answer) :-
	\+ progress(like_sky, _),
	ask(like_sky, Answer, [its_okey, oh_yeah]).
	
brand_nob(Answer) :-
	progress(brand_nob, Answer).
brand_nob(Answer) :-
	\+ progress(brand_nob, _),
	ask(brand_nob, Answer, [god_yes, who_cares]).
	
kind_of_weird(Answer) :-
	progress(kind_of_weird, Answer).
kind_of_weird(Answer) :-
	\+ progress(kind_of_weird, _),
	ask(kind_of_weird, Answer, [old_school, kawaii,still_those,asym]).
	
korean_take(Answer) :-
	progress(korean_take, Answer).
korean_take(Answer) :-
	\+ progress(korean_take, _),
	ask(korean_take, Answer, [why_not,nope]).
	
know_broke(Answer) :-
	progress(know_broke, Answer).
know_broke(Answer) :-
	\+ progress(know_broke, _),
	ask(know_broke, Answer, [fine,disappear]).
	
cant_parent(Answer) :-
	progress(cant_parent, Answer).
cant_parent(Answer) :-
	\+ progress(cant_parent, _),
	ask(cant_parent, Answer, [cool_car,kicking_air]).
	
run(Answer) :-
	progress(run, Answer).
run(Answer) :-
	\+ progress(run, _),
	ask(run, Answer, [electricity,diesel,hinden,batteries]).	
	
fun_for_you(Answer) :-
	progress(fun_for_you, Answer).
fun_for_you(Answer) :-
	\+ progress(fun_for_you, _),
	ask(fun_for_you, Answer, [being_osm,going_fast,carving,slow_fast]).
	
cylinder(Answer) :-
	progress(cylinder, Answer).
cylinder(Answer) :-
	\+ progress(cylinder, _),
	ask(cylinder, Answer, [six,eight,tweleve]).
	
engine(Answer) :-
	progress(engine, Answer).
engine(Answer) :-
	\+ progress(engine, _),
	ask(engine, Answer, [behind_me,front,back_seat]).
	
with_people(Answer) :-
	progress(with_people, Answer).
with_people(Answer) :-
	\+ progress(with_people, _),
	ask(with_people, Answer, [zero_one,two_three,four_plus]).
	
loaded(Answer) :-
	progress(loaded, Answer).
loaded(Answer) :-
	\+ progress(loaded, _),
	ask(loaded, Answer, [yes,mean_drunk]).
	
classy_shouty(Answer) :-
	progress(classy_shouty, Answer).
classy_shouty(Answer) :-
	\+ progress(classy_shouty, _),
	ask(classy_shouty, Answer, [classy,shouty]).
	
peel_dairy(Answer) :-
	progress(peel_dairy, Answer).
peel_dairy(Answer) :-
	\+ progress(peel_dairy, _),
	ask(peel_dairy, Answer, [good,fuck]).
	
axis_allies(Answer) :-
	progress(axis_allies, Answer).
axis_allies(Answer) :-
	\+ progress(axis_allies, _),
	ask(axis_allies, Answer, [axis,allies,both]).
	
want_stick(Answer) :-
	progress(want_stick, Answer).
want_stick(Answer) :-
	\+ progress(want_stick, _),
	ask(want_stick, Answer, [yep]).
	
many_few(Answer) :-
	progress(many_few, Answer).
many_few(Answer) :-
	\+ progress(many_few, _),
	ask(many_few, Answer, [yep]).
	
cash_situation(Answer) :-
	progress(cash_situation, Answer).
cash_situation(Answer) :-
	\+ progress(cash_situation, _),
	ask(cash_situation, Answer, [notso_hotso,comfort]).
	
hair_piece(Answer) :-
	progress(hair_piece, Answer).
hair_piece(Answer) :-
	\+ progress(hair_piece, _),
	ask(hair_piece, Answer, [nhi,nah,none_of_your_business]).
	
unpaid_road(Answer) :-
	progress(unpaid_road, Answer).
unpaid_road(Answer) :-
	\+ progress(unpaid_road, _),
	ask(unpaid_road, Answer, [notso_hotso,sure_do]).
	
like_noise(Answer) :-
	progress(like_noise, Answer).
like_noise(Answer) :-
	\+ progress(like_noise, _),
	ask(like_noise, Answer, [bring_noise,keep_down]).
	
p_excites(Answer) :-
	progress(p_excites, Answer).
p_excites(Answer) :-
	\+ progress(p_excites, _),
	ask(p_excites, Answer, [plucky,precise,practical,punchy]).
	
	
% Outputs a nicely formatted list of answers
% [First|Rest] is the Choices list, Index is the index of First in Choices
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).


% Parses an Index and returns a Response representing the "Indexth" element in
% Choices (the [First|Rest] list)
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).


% Asks the Question to the user and saves the Answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.
