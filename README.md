# send-a-tree

*Junior data scientist project*
The Junior Data Scientist's First Month [data36](courses.data36.com/).

## The course
This course simulated a startup with an imaginarium application which it allowed to deal with a **Data Scientist daily tasks**. The mentor (Tomi) assigned different tasks every other day for 6 weeks, which are: Segmentation, Cohort Analysis, Prediction with Regression, and Machine Learning (Classification). <br>
Here are the tasks performed on server, almost all of them by using Python. The tasks focused on SQL you can find on [data36 Repository](https://github.com/gabrielatrindade/data36). <br>
<br>
*Note:* In this course, I also dealt with tasks like Creating a Server and Creating of Reports and Dashboards. The process was to Extract the data - from the API; Transform them - using Python; and Load to Postgres. The Google Data Studio Reports and Dashboards consumed Postgres data.

## Stack
- Python
- SQL (postgres)
- bash
- Google Data Studio

## Folders and files:
- [data-sendatree/](https://github.com/gabrielatrindade/send-a-tree/tree/master/data-sendatree) : dataset and bash scripts to get information about the data.
  - data-completed/ : the complete and original dataset (as it is getting).
  - data-free-tree/ : subset from data-completed, based on event.
  - data-registration/	: subset from data-completed, based on event.
  - data-super-tree/ : subset from data-completed,based on event.
  - [**download-automation.sh**](https://github.com/gabrielatrindade/send-a-tree/blob/master/data-sendatree/download-automation.sh): crontab file. get the data, split it, catch some metrics (metrics/), send a email, load metric datas into kpi tables.
  - logfile-error.csv	: fault log when obtaining the dataset.
  - numbers-free-tree.sh, numbers-registration.sh, numbers-super-tree.sh, numbers.sh : scripts to get some metrics from the dataset.
  
- [learning/](https://github.com/gabrielatrindade/send-a-tree/tree/master/learning) : sh, ipynb and csv files to practice and learn before solving real tasks of the project.
  - bash/ : bash learning.
  - python/ : python learning.

- [**metrics/**](https://github.com/gabrielatrindade/send-a-tree/tree/master/metrics) : sql files and them outputs, as well as the email template sent daily. The output was generated daily, the sql files were run automatically in download-automation.sh every day.

- [reports/](https://github.com/gabrielatrindade/send-a-tree/tree/master/reports) : reports created in pdfs format. They was created from Google Data Studio.

- [scripts/](https://github.com/gabrielatrindade/send-a-tree/tree/master/scripts) : bash scripts to handle files and folders - to move, create, copy them, etc.

- [**tasks/**](https://github.com/gabrielatrindade/send-a-tree/tree/master/tasks) : my daily *Python* tasks.
  - task1-week2-6friday-Segments.ipynb : creating **segments**.
    - Libraries: *itertools*.
  - task1-week4-4wednesday-Cohort-Analysis.ipynb : Cohort Analysis first step. 
    - Libraries: *datetime, csv*.
    - output: test-set-output.csv
  - task1-week4-6friday-Cohort-Analysis.ipynb : completed **Cohort Analysis coding**.
    - Libraries: *csv, datetime*.
    - output: cohort-analysis-output.csv.
  - task1-week5-2monday.ipynb	: using **pandas** to explore the dataset.
    - Libraries: *pandas, os, matplotlib.pyplot*.
  - task1-week5-4wednesday-Predictive-Analytics.ipynb	: **Prediction with Regression**.
    - Libraries: *numpy, pandas, matplotlib, matplotlib.pyplot, os, sklearn.metrics.r2_score*.
  - task1-week5-6friday-MachineLearning.ipynb and Classification_Solution.ipynb : simple **Machine Learning - Classification**.
    - Libraries: *numpy, pandas, os, os.path, sklearn.ensemble.randomforestclassifier, matplotlib, matplotlib.pyplot*.
