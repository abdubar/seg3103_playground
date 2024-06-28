Solution:

TC1	Username	"z87878"	Valid\
TC2	Username	"Y8ud8y88qqqq"	Valid\
TC3	Username	""	Err2: UserName is mandatory\
TC4	Username	"q"	Err3: Size must be between 6 and 12\
TC5	Username	"e3333"	Err3: Size must be between 6 and 12\
TC6	Username	"2fn4t4"	Err1: Wrong UserName format\
TC7	Username	"W23*e3"	Err1: Wrong UserName format\

TC8	FirstName	""	Valid\
TC9	LastName	""	Valid\
TC10	FirstName	"Amaza"	Valid\
TC11	LastName	"Azmaza"	Valid\
TC12	FirstName	"Amaza1"	Err4: Wrong FirstName format\
TC13	LastName	"Amaza1"	Err5: Wrong LastName format\

TC14	Email	"test.email@example.com"	Valid\
TC15	Email	"user_name@domain.co"	Valid\
TC16	Email	"user+name@sub-domain.com"	Valid\
TC17	Email	"test@com"	Err6: Wrong Email format\
TC18	Email	"test@domain"	Err6: Wrong Email format\
TC19	Email	"test@domain..com"	Err6: Wrong Email format\
TC20	Email	"test@domain!com"	Err6: Wrong Email format\
TC21	Email	""	Err7: An Email address is mandatory\

TC22	Age	18	Valid\
TC23	Age	25	Valid\
TC24	Age	64	Valid\
TC25	Age	17	Err9: must be greater than or equal to 18\
TC26	Age	65	Err10: must be less than or equal to 64\
TC27	Age	""	Err8: Age is mandatory\

TC28	PostalCode	"K1A0B1"	Valid\
TC29	PostalCode	"B2C3D4"	Valid\
TC30	PostalCode	"K1A 0B1"	Valid\
TC31	PostalCode	"K1A0B"	Err11: Wrong Postal Code format\
TC32	PostalCode	"K1A0B1A"	Err11: Wrong Postal Code format\
TC33	PostalCode	"D1A0B1"	Err11: Wrong Postal Code format\
TC34	PostalCode	"K1F0B1"	Err11: Wrong Postal Code format\
TC35	PostalCode	"K1A0B!"	Err11: Wrong Postal Code format\


Test Table


| TC  | Expected   | Actual     | Verdict |
|-----|------------|------------|---------|
| 1   | No error   | No error   | p       |
| 2   | No error   | No error   | p       |
| 3   | error      | error      | p       |
| 4   | error      | error      | p       |
| 5   | error      | error      | p       |
| 6   | error      | error      | p       |
| 7   | error      | error      | p       |
| 8   | No error   | No error   | p       |
| 9   | No error   | No error   | p       |
| 10  | No error   | No error   | p       |
| 11  | No error   | No error   | p       |
| 12  | error      | error      | p       |
| 13  | error      | error      | p       |
| 14  | No error   | No error   | p       |
| 15  | No error   | No error   | p       |
| 16  | No error   | No error   | p       |
| 17  | error      | error      | p       |
| 18  | error      | error      | p       |
| 19  | error      | error      | p       |
| 20  | error      | error      | p       |
| 21  | error      | error      | p       |
| 22  | No error   | No error   | p       |
| 23  | No error   | No error   | p       |
| 24  | No error   | No error   | p       |
| 25  | error      | error      | p       |
| 26  | error      | error      | p       |
| 27  | error      | error      | p       |
| 28  | No error   | No error   | p       |
| 29  | No error   | No error   | p       |
| 30  | No error   | No error   | p       |
| 31  | error      | error      | p       |
| 32  | error      | error      | p       |
| 33  | error      | error      | p       |
| 34  | error      | error      | p       |
| 35  | error      | error      | p       |