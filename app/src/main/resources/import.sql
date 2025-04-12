INSERT INTO claim(id, claim_number, inception_date, category, policy_number, client_name, email_address, subject, body, summary, location, claim_time, sentiment, status)
VALUES (1, 'CASE202401', '2024-01-15', 'Flight Delay', 'BK-123456', 'John Smith', 'john.smith@email.com', 'Flight Delay Compensation Request - Booking Reference: BK-123456',
'Dear Customer Service Team,

I am writing to request compensation for a significant flight delay that occurred on January 15, 2024. My booking reference is BK-123456.

I was scheduled to fly from New York (JFK) to London (Heathrow) on Flight AA123, which was supposed to depart at 8:00 PM. However, the flight was delayed by 6 hours due to technical issues with the aircraft. This delay caused me to miss an important business meeting in London and resulted in additional accommodation costs.

The delay was announced at the gate, and we were provided with meal vouchers, but no alternative flight options were offered. I had to wait in the airport until 2:00 AM when the flight finally departed.

I have attached my boarding pass, the delay notification email, and receipts for the additional expenses incurred. I would like to request compensation under EU Regulation 261/2004 for the delay and reimbursement for the additional costs.

Please process this request at your earliest convenience. You can reach me at john.smith@email.com or +1 (555) 123-4567.

Thank you for your attention to this matter.

Sincerely,
John Smith',
'On January 15, 2024, John Smith experienced a 6-hour delay on Flight AA123 from New York (JFK) to London (Heathrow). The delay was caused by technical issues with the aircraft and resulted in missed business commitments and additional expenses.

John has provided documentation including boarding passes, delay notifications, and expense receipts. He is requesting compensation under EU Regulation 261/2004 and reimbursement for additional costs incurred due to the delay.',
'New York JFK Airport, Gate 12',
'January 15, 2024, 8:00 PM',
'The customer expresses frustration about the flight delay but maintains a professional tone. They provide clear documentation and specific details about the impact of the delay.',
'In Process');

INSERT INTO claim(id, claim_number, inception_date, category, policy_number, client_name, email_address, subject, body, summary, location, claim_time, sentiment, status)
VALUES (2, 'CASE202402', '2024-02-20', 'Lost Luggage', 'BK-789012', 'Sarah Johnson', 'sarah.johnson@email.com', 'Lost Luggage Report - Booking Reference: BK-789012',
'Dear Lost and Found Department,

I am writing to report that my checked luggage did not arrive at my destination after my flight from Paris (CDG) to New York (JFK) on February 20, 2024. My booking reference is BK-789012.

Flight Details:
- Flight Number: AF123
- Departure: Paris CDG, February 20, 2024, 10:00 AM
- Arrival: New York JFK, February 20, 2024, 1:00 PM

I filed a lost luggage report at the JFK baggage service office immediately upon arrival (Report Number: LOST-2024-12345). The baggage tag number is 123456789.

The missing suitcase is a black Samsonite hard-shell case with a red ribbon tied to the handle. It contains:
- Business attire for a week-long conference
- Personal documents and electronics
- Prescription medication
- Valuable personal items

I have already incurred expenses purchasing essential items. I would appreciate immediate assistance in locating my luggage and information about the compensation process for my expenses.

Please contact me at sarah.johnson@email.com or +1 (555) 987-6543.

Thank you for your prompt attention to this matter.

Best regards,
Sarah Johnson',
'Sarah Johnson reports that her checked luggage did not arrive at New York JFK after her flight from Paris CDG on February 20, 2024. She filed a lost luggage report at the airport and provided detailed information about the missing suitcase and its contents.

The suitcase is described as a black Samsonite hard-shell case with a red ribbon. It contains business attire, personal documents, electronics, medication, and other valuable items. Sarah has already incurred expenses replacing essential items and is seeking assistance in locating her luggage and information about compensation.',
'New York JFK Airport, Baggage Claim Area',
'February 20, 2024, 1:00 PM',
'The customer is concerned but maintains a professional tone. They provide detailed information about the missing luggage and its contents, along with clear documentation of the report filed.',
'New');

INSERT INTO claim(id, claim_number, inception_date, category, policy_number, client_name, email_address, subject, body, summary, location, claim_time, sentiment, status)
VALUES (3, 'CASE202403', '2024-03-10', 'Customer Service', 'BK-345678', 'Michael Brown', 'michael.brown@email.com', 'Complaint Regarding In-Flight Service - Booking Reference: BK-345678',
'Dear Customer Relations,

I am writing to express my disappointment with the service I received on my recent flight from Tokyo (NRT) to Los Angeles (LAX) on March 10, 2024. My booking reference is BK-345678.

Flight Details:
- Flight Number: JL123
- Departure: Tokyo Narita, March 10, 2024, 3:00 PM
- Arrival: Los Angeles, March 10, 2024, 9:00 AM

The issues I encountered were:
1. My pre-ordered vegetarian meal was not available
2. The cabin crew was unresponsive to multiple requests for assistance
3. The entertainment system in my seat was not functioning
4. The cabin temperature was uncomfortably cold throughout the flight

I have been a loyal customer for over 5 years and this experience was far below the standard I have come to expect from your airline. I would appreciate a response addressing these concerns and information about any compensation or goodwill gesture you may offer.

Please contact me at michael.brown@email.com or +1 (555) 234-5678.

Thank you for your attention to this matter.

Sincerely,
Michael Brown',
'Michael Brown experienced multiple service issues on his flight from Tokyo to Los Angeles on March 10, 2024. The problems included missing pre-ordered meals, unresponsive cabin crew, malfunctioning entertainment system, and uncomfortable cabin temperature.

As a long-term customer, Michael is disappointed with the service quality and is seeking acknowledgment of these issues and potential compensation.',
'Los Angeles International Airport, Terminal 2',
'March 10, 2024, 9:00 AM',
'The customer expresses disappointment but remains constructive in their feedback. They provide specific details about the service issues encountered and maintain a professional tone throughout.',
'In Process');

ALTER SEQUENCE claim_seq RESTART WITH 4;