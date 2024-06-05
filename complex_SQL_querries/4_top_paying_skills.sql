/*
Answer: What are the top skills based no salary?
-look at the average salary associated with each skill for data Analyst positions
-Focus on roels with specified salaries, regardless of location
-Why? It reveals how different skills impat salary levels for Data Analysis and
    helps the most financially reqarding skilsl to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg),0) as avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True
GROUP BY
    skills
ORDER BY avg_salary DESC
limit 25;

--JSON copy of the given querry

/*Hey,
Here are the top paying skills for data analysts, the top 25, can you provide some quick insights into some trends into the top paying jobs?
[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  }
] */

--REsults
/*
in short 3 bullet points: 
Sure, here are the key insights summarized into three bullet points:

Big Data, Cloud, and AI Technologies: High-paying skills include PySpark, Databricks, Elasticsearch, Watson, DataRobot, GCP, and machine learning libraries (Pandas, Numpy, Scikit-learn), highlighting the importance of handling large-scale data, cloud-based solutions, and AI-driven analytics.

Development and Collaboration Tools: Bitbucket, GitLab, Jenkins, and Kubernetes are crucial for version control, CI/CD, and container orchestration, reflecting the need for efficient development workflows and scalable application deployment.

Programming and Data Management: Expertise in programming languages (Swift, Golang, Scala) and specialized databases (Couchbase, PostgreSQL) is highly valued, indicating the crossover between app development and data analytics, and the importance of both NoSQL and relational database management systems.

*/