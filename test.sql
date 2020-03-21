SELECT *
FROM users
LIMIT 20;

/*
The marketing department wants to send a "Born in the ‘80s " email to the appropriate users.

*/

SELECT email, birthday
FROM users
WHERE birthday BETWEEN '1980-01-01' AND '1989-12-31';

/* Getting the cohort of users that signed up prior to May 2017.*/

SELECT email, created_at
FROM users 
WHERE created_at <= '2017-05-01';

/*
There was an A/B test performed on users that used cute animal clipart to encourage users to sign up. Finding how the group that was shown ‘bears’ is performing.
*/

SELECT email
FROM users 
WHERE test= 'bears';

/*
A total of 4 advertising campaigns were run over this period.

There were two sets of ad copy (set 1 and set 2) and both were run on two search engine sites (AAA and BBB).

The resulting campaign values are:

AAA-1
AAA-2
BBB-1
BBB-2
Finding all the emails of all users who received a campaign on website BBB.
*/

SELECT email
FROM  users 
WHERE campaign LIKE 'BBB%';

/*
Find all the emails of all users who received ad copy 2 in their campaign.
*/

SELECT email
FROM users
WHERE campaign LIKE '%-2';



/*
Finding the emails for all users who received both a SELECT email
FROM users and a test.

These users will have non-empty entries in the campaign and test columns.*/

SELECT email
FROM users
WHERE campaign IS NOT NULL AND
      test IS NOT NULL;
      



