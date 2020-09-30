---
---



```
\documentclass[article]{article}

\usepackage{apacite}
%The following is needed to get the hyperlinks to work with  apacite
\let\APAbibcite\bibcite 
\let\HYPERbibcite\bibcite
\def\bibcite#1#2{\APAbibcite{#1}{#2}\HYPERbibcite{#1}{#2}}
\usepackage{bibentry}
%%%%%%%%%%%

\usepackage[pdftex,
            pdfauthor={Aaron R. Baggett, Ph.D.},
            pdftitle={Syllabus, PSYC 2316, F2019},
            pdfsubject={Statistics for the Behavioral and Social Sciences},
            pdfkeywords={},
            pdfproducer={LaTeX},
            pdfcreator={pdflatex}]{hyperref} % Used to have linked text
 \hypersetup{  
   colorlinks,   
   citecolor=Magenta,
   linkcolor=Magenta,
   urlcolor=blue,
}

\oddsidemargin=.025in \evensidemargin=.25in
\topmargin=-.5in
\textwidth=6.5in \textheight=9in \pagestyle{empty}
\parindent=0in
% \usepackage{amsmath,amssymb,amsthm, graphicx}
\pagenumbering{arabic}
\usepackage{termcal}
\usepackage{mathtools}
\usepackage{fancyvrb}
\usepackage[flushleft]{threeparttable}
\usepackage[sc]{mathpazo}
\usepackage{amssymb}
\usepackage{enumitem}
\usepackage[dvipsnames]{xcolor}
\usepackage{mathptmx}
\usepackage{multirow}
\usepackage{lmodern}
\usepackage{tgtermes}
\usepackage[T1]{fontenc}
\usepackage{lscape}
\usepackage{longtable}
\usepackage{tabu}
\usepackage{float}
\usepackage{tabularx}
%\usepackage{roboto-mono}
\usepackage{inconsolata}

\usepackage{hanging}
\usepackage{fancyhdr,lastpage}
\pagestyle{fancy}
%\fancyhead{}
\fancyfoot{}
\rhead[\thepage/\pageref*{LastPage}]{\thepage/\pageref*{LastPage}}
\lhead[PSYC 2316 \textit{Statistics for the Social Sciences}]{PSYC 2316-01 \textit{Statistics for the Social Sciences}}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\title{
\HRule \\
PSYC 2316-01 \\ \sc{Statistics for the Social Sciences\\ }
\HRule
}
\author{Fall 2019}
\date{}

\begin{document}

\bibliographystyle{apacite}

\maketitle

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\textbf{Instructor}: Aaron R. Baggett, Ph.D.\\
\textbf{Email}: \texttt{\href{mailto:abaggett@umhb.edu}{abaggett@umhb.edu}}\\
\textbf{Office Phone}: (254) 295-4553\\
\textbf{Office}: Wells 140\\
\textbf{Office Hours}: MWF: 9:00 AM--10:00 AM; TR: 9:00 AM--11:00 AM; M-R: 1:00 PM--2:00 PM; and by appointment

\section{Course Information}
\subsection{Meeting}
\textbf{Time:} Tuesday/Thursday, 11:00 AM -- 12:30 PM\\
\textbf{Location:} Wells Science Hall (WSH) 152\\
{\bf{Course Website:}} \texttt{\href{https://mycourses.umhb.edu/courses/20947}{myCourses}}\\
{\bf{Prerequisite:}} MATH 1304 or higher

\subsection{Description}
This course is designed to introduce students to basic statistical techniques and procedures used by applied researchers in the behavioral and social sciences. As a result, emphasis will be placed on basic procedures involved in organizing and presenting data, as well as selecting, running, and interpreting various parametric statistical tests. Students will utilize the \textbf{\textsf{R}} statistical software application to conduct and interpret descriptive and inferential statistics. Students completing this course will acquire the skills necessary to both conduct and interpret statistical analyses in behavioral and social science settings.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COURSE OBJECTIVES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\subsection{Course Objectives}
At the conclusion of this course, students should be able to:\\

\begin{enumerate}
\item {\bf{Gain factual knowledge such as important terminology, classifications, methods, and trends by:}}

\begin{enumerate}[label=\Alph*.]
\itemsep2pt\parskip0pt\parsep0pt
\item Participating in lectures and in-class presentations;
\item Distinguishing between the four basic scales of measurement;
\item Distinguishing between null and alternative hypotheses;
\item Distinguishing between Type I and Type II Errors;
\item Understanding characteristics of population and sample distributions;
\item Understanding essential characteristics of descriptive statistics and procedures used for summarizing data;
\item Understanding probability and the foundations of inferential statistics;
\item Making inferences about the variability between- and within-samples according to the general linear model;
\item Distinguishing between statistical and practical significance.
\end{enumerate}

\item {\bf{Learn to apply course material to improve decision-making, problem solving, and critical thinking skills related to experimental design and statistical analysis by:}}

\begin{enumerate}[label=\Alph*.]
\itemsep2pt\parskip0pt\parsep0pt
\item[A.] Completing formal assessments involving knowledge-level, conceptual, and applied material;
\item[B.] Completing a series of individual data evaluation and analysis projects involving performing, analyzing, and interpreting statistical output;
\item[C.] Communicating research findings according to the rules of APA Style (in both written and oral form);
\item[D.] Considering the ethical issues associated with research involving human and nonhuman participants.
\end{enumerate}
\end{enumerate}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CREDIT HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\subsection{Credit Hour}
The semester credit hour is a unit by which an institution measures its course work. The value of a semester credit hour can be determined by time, the educational experience, and outside preparation by the student.\\

For this course:

\begin{enumerate}
\item At least fifteen (15) contact hours, as well as, a minimum of thirty (30) hours of student homework is required for each semester credit hour.
\end{enumerate}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% READINGS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\subsection{Readings}

%\subsubsection{Required}

{\bf{Textbook:}}\\

\begin{hangparas}{.4in}{1}
Diez, D. M.,  \c{C}etinkaya-Rundel, M., \& Barr, C. D. (2019).  {\em{OpenIntro statistics}} (4\textsuperscript{th} ed.).  OpenIntro.
\end{hangparas}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SOFTWARE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsection{Required Software}

All data and statistical analyses in PSYC 2316-01 will be conducted using the \textbf{\textsf{R}} statistical programming language via the graphical user interface software, RStudio. During class, RStudio will be accessed using an online, cloud-based version of the software.  This will be the preferred method for use during and outside of class. Follow the instructions in the \texttt{RStudio\_Cloud\_Setup.pdf} document in myCourses (see: \texttt{Files > RStudio Cloud Setup > RStudio\_Cloud\_Setup.pdf}) to create a user account.

%\subsubsection{Steps to Accessing RStudio Online}\label{server}
%\begin{enumerate}
%\item Navigate your internet browser to the following URL: \texttt{\href{https://rstudio.cloud/}{https://rstudio.cloud/}}
%\subitem {\em{Note:}} Google Chrome, Mozilla Firefox, or Apple Safari browsers have been the most reliable internet browsers for this use. Students often experience issues when using Internet Explorer.
%\item Log-in using your UMHB single-sign on credentials
%\item Repeat as necessary
%\end{enumerate}

%More details on using and interacting with the online version of RStudio will be provided in class and via handouts and/or video tutorials.

%RStudio Cloud Setup:
%Create a user account at \texttt{\href{https://rstudio.cloud/}{https://rstudio.cloud/}} and follow the directions here to login (see: \texttt{Files > RStudio Cloud Setup > RStudio\_Cloud\_Setup.pdf}. You should have also received an email from rstudio.cloud \verb+<noreply@rstudio.cloud>+ containing a link to join the shared space "PSYC 2316-01". Let me know if you run into any issues or problems. It would really help us get started with a sprint if everyone can complete these steps by Tuesday.

%Experiencing RStudio:
%One of the things we will be doing on Tuesday is allowing you to experience the R software and RStudio interface. The slides we will be working through are available here. See: Files > Lecture Slides > 2019-01-22_RStudio_Experience.pdf.
%
%Slides for Tuesday: Files > Lecture Slides > 2019-01-22_RStudio_Experience.pdf
%https://mycourses.umhb.edu/files/1605106/download?download_frd=1
%
%RStudio Cloud setup instructions: Files > RStudio Cloud Setup > RStudio_Cloud_Setup.pdf
%https://mycourses.umhb.edu/files/1605104/download?download_frd=1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ACADEMIC INTEGRITY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\subsection{Academic Integrity}\label{integrity}
%Students who violate the standards outlined in the University's policy on classroom expectations and ethics shall be subject to appropriate discipline as determined by the instructor of the relevant class, and/or in some cases, by the administration of the University. Penalties for violating the University's academic integrity standards can range from receiving a lower grade (including zero) on an assignment to being expelled from the University.  You may review the policy in full here: \href{http://registrar.umhb.edu/classroom-expectations-ethics}{http://registrar.umhb.edu/classroom-expectations-ethics}

UMHB's Academic Integrity policy will be strictly upheld in this course. If you have not read it, it is your responsibility to do so.  Find it online here:  \href{http://catalog.umhb.edu/en/2018-2019/Undergraduate-Catalog/Classroom-Expectations-and-Ethics}{\texttt{Classroom Expectations and Ethics}}.  
The statement explains University requirements concerning Christian citizenship, student responsibility, class attendance, academic decorum, and academic integrity.\\
 
While the entire policy will be upheld, some sections that are most likely to be relevant to this class are included here:
 
The University is a learning community in which participants are responsible for one another.
\begin{itemize}
\item[a.] Assisting a student in any violation of the academic integrity standards is expressly prohibited. For example, providing or receiving unauthorized assistance, including (but not limited to) taking another student's exam, providing answers to another student during a test, or contributing to another student's written work without permission.
\end{itemize}
 
Written work should reflect the student's own ideas and any use of others' words, ideas, or patterns of thought should be appropriately quoted and/or cited.
\begin{itemize}
\item[a.] Plagiarism in any form is expressly prohibited.
\item[b.] Failure to comply with the university's copyright policy is expressly prohibited.
\end{itemize}
 
A student who fails to meet these standards of academic integrity may receive a lower grade (including zero) on an assignment or a lower grade (including an ``F" or ``No Credit") for the course, as determined by the instructor. The penalty for academic dishonesty may also include more severe penalties, up to expulsion from the University. Conduct which violates the student Code of Conduct may also be grounds for disciplinary action as described in the Student Handbook.

\subsection{Disabled Student Services and Accommodations}
It is the student’s responsibility to request disability accommodations. Students requesting an accommodation for a disability, must contact the UMHB \href{http://cths.umhb.edu/disability}{\texttt{Counseling, Testing \& Health Services}} as early as possible in the term. \href{http://catalog.umhb.edu/en/2019-2020/Undergraduate-Catalog}{\texttt{The Course Catalog}}, \href{http://students.umhb.edu/student-handbook}{\texttt{Student Handbook}} and \href{https://go.umhb.edu/}{\texttt{UMHB website}} provide more details regarding the process by which accommodation requests will be reviewed. For more information, please contact Dr. Brandon Skaggs, Vice President for Student Life [\texttt{\href{mailto:bskaggs@umhb.edu}{bskaggs@umhb.edu}}; (254) 295-4496].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CLASS STRUCTURE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsection{Class Structure}
%\subsubsection{Team Based Learning}

All assignments, exams, and other coursework are completed individually. However, during certain class meetings you may either be assigned to or asked to form small groups in order to collaborate on data analysis projects and/or prompts. You will be guided through the following course learning modules.

%This course is delivered using a team based learning (TBL) format.  Accordingly, you will be assigned to a team with approximately 3-5 members. Teams are created in class during the first week and remain permanent for the duration of the course. Teams will be formed using a team-formation software application.  You will receive more information about completing the team-formation requirements during the first week of class.  Teams will be guided through the following course learning modules.

\subsubsection{Learning Modules}

PSYC 2316-01 is divided into four (4) learning modules:
\begin{enumerate}
\item Introduction to Data and Probability
\item Foundations for Statistical Inference
\item Statistical Inference for Numerical and Categorical Data
\item Simple and Multiple Regression
\end{enumerate}

%Modules have a sequence of 3 discrete learning phases:
%
%\begin{enumerate}
%{\bf{ \item Outside Reading and Preparation:}}
%
%In this phase, you complete all specified readings outlined in the \nameref{sec:Cal} by the date due. The purpose of this phase is to prepare you for individual and team quizzes.  I recommend you do the following when preparing for quizzes: (a) read the chapter(s), (b) outline the chapter(s) using the notes/prompts provided in the text; (c) define the terms and answer the review questions at the end of each chapter; (d) make the review questions into multiple choice questions; (e) think about how you can apply the information to yourself.
%
%{\bf{ \item Readiness Assessment:}}
%
%On the first class meeting of each new module you will complete an individual readiness quiz (MQ) and a team readiness quiz (TQ).  These quizzes measure your comprehension of the assigned readings.  After completing the MQ, you join your team and, together, retake the quiz.  Once the individual and team testing periods have concluded, the instructor may give a mini-lecture to clarify concepts that are not well understood as evidenced by the module quiz scores.  The purpose of this phase is to ensure that you and your teammates have sufficient foundational knowledge to begin learning how to apply and use the course concepts.
%
%\begin{enumerate}
%{\bf{ \item[A.] Readiness Assessment Described:}}
%
%\begin{itemize}
%{\bf{ \item  {Module Quizzes (MQs):}}} \label{sec:irqs}\\
%This assessment process requires that you complete a 25 question, multiple choice quiz taken individually.  Questions from each MQ are based on the reading for each module, outlined in the \nameref{sec:Cal}.
%
%{\bf{ \item  {Team Quizzes (TQs):}}} \label{sec:trqs}\\
%Following the MQ, the same multiple choice quiz is re-taken with your team. Your team will be provided with a scratch-off-like answer card.  Your team will receive 1 point if you uncover the correct answer on the first scratch, 0.5 point for a second scratch, and 0.25 point for a third scratch.  Correct answers are indicated by a small star ($\bigstar$).
%
%{\bf{ \item  Appeals Process:}}\\
%Once your team has completed the team quiz, your team has the opportunity to fill out an Appeals Form. The purpose of the appeals process is to allow your team to identify questions where you disagree with the question keying or wording or the information in the readings. Instructors will review the appeals outside class time and report the outcome of your team appeal at the next class meeting.
%
%{\bf{ \item  Feedback and Mini-lecture:}}\\
%TQ scores will indicate to the instructor how well you understand the material from the text.  Based on the TQ scores, a tailored mini-lecture will be designed to help supplement any areas of weakness. This is likely the closest we will have to a traditional lecture. Following the quiz and appeals, the instructor will answer any further questions on the reading material.  We then move to applying the newly-learned concepts to the real world. We'll do this in team exercises called In-Class Applications. 
%\end{itemize}
%\end{enumerate}
%
%{\bf{ \item In-Class Applications:}}
%
%In this phase, teams will {\em{apply}} foundational knowledge, acquired in the first two phases, by completing a variety of in-class team activities.  Team application exercises will pose a question/scenario using research articles, case studies, et al. and ask you, as a team, to arrive at a consensus by selecting a ``best" solution out of options provided.  Your Team will need to poll each member, listen to each member's ideas and their explanation of why their idea would work, and then reach a team consensus.  At the end of your deliberation, all of the teams will share their findings, followed by a class discussion.
%
%At the conclusion of each module each team will complete a graded team application exercise (GTAE) that synthesizes the concepts to date.  GTAEs are worth 25 points and will be based on dimensions of knowledge demonstration and application, communication, and team functioning.  Six (6) team exercises will be graded.  You will have the opportunity to complete one (1) ungraded TAE at the start of the semester for the purpose of practice and familiarizing yourself with the process.  The scoring rubric will be posted online and will be discussed in detail during the practice module.
%\end{enumerate}

\subsection{Course Communication}
\subsubsection{Email}
Most all course communication outside of class will take place via email.  I will routinely email you course updates and announcements to your UMHB-assigned email address.  Thus, you should check your email frequently.  Likewise, due to the nature of this class and the corresponding assignments, you will likely need to contact me with questions. I am committed to responding as quickly as possible to your questions via email. As a result, you can expect me to respond, on average, within several hours of your email---often sooner. However, in some circumstances, a personal visit during office hours or other scheduled appointment may be more efficient than email. You are welcome to call me on my office line: (254) 295-4553. This can be an even more efficient method for quick troubleshooting inquiries.

\subsubsection{Remind}
Although I do not anticipate delaying or canceling any class meeting(s), there may be extenuating circumstances which require me to do so.  In these situations, I will communicate with you through a free, safe, and one-way text messaging service called Remind.  To sign up for these alerts, text {\texttt{@psyc2316a}} to 81010 and follow the instructions.  If you have trouble with this method, try texting {\texttt{@psyc2316a}} to (254) 296-8301.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COURSE REQUIREMENTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{Course Requirements}

\subsection{Module Quizzes (MQs)}
MQs are multiple choice quizzes, with up to 35 questions, that students complete individually in class.  Questions from each MQ are based on the reading and lectures from each module, outlined in the \nameref{sec:Cal}.  You will be provided with a Scantron form to complete this assignment.

\begin{table}[H]
\begin{center}
\caption{Module Quiz Dates}
\vspace{3mm}
\begin{tabular}{llr}
\hline
 & {\bf{Module}} & {\bf{Due}}\\
\hline
1. & Introduction to Data and Probability (Chs. 1-2) & 09-17-2019\\
2. & Foundations for Statistical Inference (Chs. 3-4) & 10-15-2019\\
3. & Statistical Inference for Categorical and Numerical Data (Chs. 5-6) & 11-12-2019\\
%4. & Simple and Multiple Regression (Chs. 7-8) & 05/01/2017\\%%%%%%%% WHAT AM I GOING TO DO HERE?
\hline
\end{tabular}
\end{center}
\label{iqs}
\end{table}%

\subsubsection{Individual Lab Assignments}\label{sec:labs}
Individual lab assignments will feature a series of guided, application-based, statistical analysis problems that you will complete using RStudio Cloud. These assignments require you to apply what you've learned within each of the course modules by utilizing the RStudio statistical software to produce a comprehensive lab report.\\

Each lab assignment will include a detailed set of directions available on the course website. You should use \href{https://rstudio.cloud/}{\texttt{RStudio Cloud}} to complete these assignments. Additionally, you will be provided a skeleton-like lab report template for each of the lab assignments. More details on completing the lab assignments will be provided in class. Table \ref{labs} below contains the topic and due date for each lab assignment. Note: These are individual assignments. Dr. Baggett is a veritable \textbf{\textsf{R}} genius and will be able to identify any student(s) who violate the academic integrity policy outlined in Section \ref{integrity}.

\begin{table}[H]
\begin{center}
\caption{Individual Lab Assignment Dates}
\label{labs}
\vspace{3mm}
\begin{tabular}{llr}
\hline
 & {\bf{Topic}} & {\bf{Due}}\\
\hline
1. & Introduction to \textbf{\textsf{R}} and RStudio & 09-08-2019\\
2. & Introduction to Data & 09-22-2019\\
3. & The Normal Distribution & 10-06-2019\\
4. & Sampling Distributions and Confidence Intervals & 10-20-2019\\
5. & Inference for Numerical Data & 11-10-2019\\
6. & Inference for Categorical Data & 11-24-2019\\
%7. & Simple Regression & 04/27/2019\\
\hline
\end{tabular}
\end{center}
\end{table}%

\subsubsection{Final Exam}
The final exam will consist of a cumulative multiple-choice test worth 100 points. The final exam for this section is scheduled for 10:30 AM--12:30 PM Thursday, December 12, 2019.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GRADING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsection{Grade Calculation}

\subsubsection{Individual and Team Performance}
Table \ref{points} below describes all assignments, their point value, and proportion of weighted total. See to Table \ref{finalgrades} for final grade calculation and letter grade distribution.

\begin{table}[H]
\centering
\caption{Individual Assignments and Point Values}
\vspace{3mm}
\label{points}
%\begin{threeparttable}
\begin{tabular}{lllrlrr}
\hline
\bf{Assignment} & \bf{\em{n}} &  & \bf{Points} &  & \bf{Total} & \bf{Prop.} \\
\hline
Module Quizzes (MQs) & 3 & $\times$ & 31.66667 & = & 95 & .40\\
Individual Lab Assignments & 6 & $\times$ & 10 & = & 60 & .25 \\
Final Exam & 1 & $\times$ & 100 & = & 100 & .30 \\
Attendance & 28 & $\times$ & 0.178571429 & = & 5 & .05 \\
Extra Credit & 5 & $\times$ & 2 & = & 10 & .00 \\
\multicolumn{4}{r}{\bf{Individual Performance Total}} & {\bf{=}} & {\bf{260}} & {\bf{1.00}} \\
%\hline
%\\
%Team Quizzes (TQs) & 3 & $\times$ & 31.66667 & = & 95 & .20 \\
%
%\multicolumn{4}{r}{\bf{Team Performance Total}} & {\bf{=}} & {\bf{145}} & .{\bf{40}}\\
\hline
\end{tabular}
       % \begin{tablenotes}
         %\item {\em{Note}}: Please refer to sections \ref{sec:latework} and \ref{sec:missedexams} regarding the late submission and missed exam policies, respectively.
       % \end{tablenotes}
     %\end{threeparttable}
\label{points}
\end{table}

%\subsubsection{Peer Evaluation}\label{sec:peereval}
%At the end of the course, you will complete a confidential peer evaluation to assess the contribution of the other members of your team. You will be evaluating each member on their participation in team activities (e.g., Did they come to class regularly? Were they prepared for the day's activity? Did they contribute productively to the team? Respect others' ideas?, etc.) When evaluating your team members, you will distribute 100 points among the other members of your team. We will likely have teams of 3-5 students. Thus, each team member will be evaluated by the other 2-4 members of the team. The peer evaluation form will be distributed on Monday, April 30, 2019.\\
%
%The peer evaluation process will also be completed at the midpoint of the semester.  This allows you to practice and gain experience with the process.  More importantly, it gives you valuable feedback from your teammates about your performance as a team member. \\
%
%To calculate your individual peer evaluation score, the instructor will take the sum of all scores assigned to you by your peers and divide that total by 100.  The resulting quotient will be multiplied by your team's performance score in order to obtain the individual team performance score.\\
%
%For example, let's assume you achieved 190 of the 210 total individual points available (190/210) $\times$ .6 = 0.5428.  Let's also assume your team received 85 of the 95 points from TQs and 50 of the 60 points from lab assignments (135/145) $\times$ .4 = 0.3724.  Before factoring in your peer evaluation score, your semester grade would be (0.5428 $+$ 0.3724) $\times$ 100 = 89.11. Now, assume your individual composite performance evaluation score was .91 (91/100).  {\em{Your}} particular team performance score would be:
%
%\begin{equation}
%0.3724 \times .91 = 0.3388
%\end{equation}
%
%Thus, when we combine your individual point total with your share of your team's points, your final grade would be:
%
%\begin{equation}
%(0.5428 + 0.3388) \times 100 = 88.16
%\end{equation}

\subsubsection{Final Grade Calculation}
All course grades will be posted in the gradebook in myCourses. All point totals and proportional weights listed in Table \ref{points} are reflected in myCourses. Thus, your current grade in myCourses should reflect your actual grade. Table \ref{finalgrades} below describes the point range required to achieve a given letter grade.

\begin{table}[H]
\begin{center}
\caption{Final Grade Point Range Requirements}
\label{finalgrades}
\vspace{3mm}
\begin{tabular}{cccc}
\hline
\bf{Grade} & \bf{Point Range} & \bf{Percentage} & \bf{Grade Points}\\
\hline
A & 233.00 -- 260.00 & 90 -- 100 & 4.0\\ 
B & 208.00 -- 232.00 & 80 -- 89  & 3.0\\ 
C & 182.00 -- 207.00 & 70 -- 79  & 2.0\\ 
D & 156.00 -- 181.00 & 60 -- 69  & 1.0\\ 
F & 000.00 -- 155.00 & 00 -- 59  & 0.0\\
\hline
\end{tabular}
\end{center}
\end{table}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% POLICIES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{Policies}

\subsection{Attendance} \label{sec:attendance}
Your regular attendance in this course is expected. I will record and maintain attendance records for each student. Attendance is worth 5\% of your final grade. In other words, if you attend 100\% of the scheduled class meetings you will earn the complete 5\% attendance total. Any University- or otherwise-excused absence will not count toward this total. At the conclusion of the semester, the percentage of class meetings you attended will be multiplied by 0.05 to obtain your attendance grade.

\subsection{Late Work} \label{sec:latework}
All assignments are considered late if submitted after the date and time specified in the syllabus and/or {\em{myCourses}} site.  This policy will be enforced in the event that assignment deadlines are revised during the course of the term.  Assignments submitted late will result in a penalty of 20 percentage points per day.\\

For example, if an assignment is due on October 30, 2019 and is submitted within 24 hours of the due date and time that assignment will result in an automatic deduction of 20 percentage points from the assignment raw score.  In other words, if you submit an assignment worth 10 points on October 31, 2019, and the assignment was originally due October 30, 2019, and you score a 9.5/10, then your new score would be:

\begin{equation}
9.5 - (9.5)(0.20) \times 100 = 7.6.
\end{equation}

Assignments submitted more than five calendar days late will receive a grade of zero.  To ensure fairness, this policy will be strictly enforced.  Exceptions under the conditions described below in section \ref{sec:missedexams} may be made, but will require at least 24 hours advance permission from the instructor.

\subsection{Exams and Quizzes} \label{sec:exams}

\subsubsection{Exam/Quiz Day Decorum} \label{sec:decorum}
Once any in-class exams or quizzes are distributed you may not leave the classroom until you have submitted your answer and test forms.

\subsubsection{Tardiness on Exam/Quiz Days} \label{sec:late}
Students who arrive late for class on exam/quiz days will be allowed to complete the quiz in the amount of time remaining upon their arrival.

\subsubsection{Mobile Phones} \label{sec:examphones}
The use of mobile or cell phones during tests is strictly prohibited. All mobile or cell phones should be placed on airplane mode during tests.

\subsubsection{Missed Exams} \label{sec:missedexams}
Missed MQs may be retaken under the following circumstances only:
\begin{enumerate}
\item Death in the immediate family (parent, spouse, sibling, child) within two weeks prior to the exam date.
\item Participation in an official UMHB-sponsored academic or sporting event.
\begin{itemize}
\item[a.] MQs must be scheduled and completed prior to the in-class administration.
\end{itemize}
\item Unforeseeable medical emergency affecting yourself, your spouse, or your child (e.g., automobile accident, major sickness, et al.).
\end{enumerate}

{\em{Note:}} Routine medical appointments or clinical visits related to minor illnesses do not qualify as an unforeseeable medical emergency.  Likewise, conflicts with a work schedule or trips not related to official UMHB events do not qualify for retaking a missed exam.  Supporting documentation may be required.

\subsection{Miscellaneous} \label{sec:misc}

\subsubsection{Food and Drink} \label{sec:food}
No food of any kind will be allowed in the classroom. You may bring beverages into the classroom with a sealable lid or cap. Otherwise, no drinks are allowed.

\subsubsection{Mobile Phones} \label{sec:phones}
The use of mobile or cell phones during class or tests is strictly prohibited. All mobile or cell phones should be placed on airplane mode during class and tests.

\section{Disclaimer}
Syllabus is subject to change at instructor's discretion.\\
	
\newpage

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CALENDAR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{landscape}
\section{Tentative Course Calendar} \label{sec:Cal}

\begin{center}
\begin{longtable}{@{\extracolsep{\fill}}p{2in}p{.25in}lp{2.5in}lr}
\label{tab:sched}\\

%%% Header on first page
\hline
\bf{MODULE} & \bf{WK} & \bf{DATE} & \bf{TOPIC(S)} & \bf{READ.} & \bf{DUE}\\
\hline
\endfirsthead

%%% Header on subsequent page(s)
\hline
\bf{MODULE} & \bf{WK} & \bf{DATE} & \bf{TOPIC(S)} & \bf{READ.} & \bf{DUE}\\
\hline
\endhead

%%% Footer on page break(s)
 \hline \\
\multicolumn{6}{r}{{{\em{Continued on next page}}}}
\endfoot

%%% Footer on last page
\hline
\endlastfoot
\\
%module		week		date		topic		reading		asign.	
Introduction to Data and Probability	&	1	&	Tue. 27-Aug	&	Introduction to Course/Lab 01: Introduction to R and RStudio	&	Ch. 1	&	---	\\
---	&	1	&	Thu. 29-Aug	&	Lab 01: Introduction to R and RStudio, contd.	&	---	&	---	\\
---	&	2	&	Tue. 03-Sep	&	Introduction to Data I	&	---	&	---	\\
---	&	2	&	Thu. 05-Sep	&	Introduction to Data II	&	---	&	---	\\
	&	3	&	\color{red}{\bf{Sun. 08-Sep}}	&	---	&	---	&	\color{red}{\bf{Lab 01}}	\\
	&	3	&	Tue. 10-Sep	&	Introduction to Data III	&	---	&	---	\\
---	&	3	&	Thu. 12-Sep	&	Lab 02: Introduction to Data	&	---	&	---	\\
---	&	4	&	Tue. 17-Sep	&	---	&	---	&	{\bf{MQ 01}}	\\
\\											
\hline											
\\											
Foundations for Statistical Inference	&	4	&	Thu. 19-Sep	&	Distributions of Random Variables I	&	Ch. 3	&	---	\\
---	&	5	&	\color{red}{\bf{Sun. 22-Sep}}	&	---	&	---	&	\color{red}{\bf{Lab 02}}	\\
---	&	5	&	Tue. 24-Sep	&	Distributions of Random Variables II	&	---	&	---	\\
---	&	5	&	Thu. 26-Sep	&	Lab 03: The Normal Distribution	&	---	&	---	\\
---	&	6	&	Tue. 01-Oct	&	Foundations for Inference I	&	Ch. 4	&	---	\\
---	&	6	&	Thu. 03-Oct	&	Foundations for Inference II	&	---	&		\\
---	&	7	&	\color{red}{\bf{Sun. 06-Oct}}	&	---	&	---	&	\color{red}{\bf{Lab 03}}	\\
---	&	7	&	Tue. 08-Oct	&	Foundations for Inference III	&	---	&	---	\\
---	&	7	&	Thu. 10-Oct	&	Lab 04: Foundations for Statistical Inference	&	---	&	---	\\
---	&	8	&	Tue. 15-Oct	&	---	&	---	&	\color{red}{\bf{MQ 02}}	\\
\\											
\hline											
\\											
Statistical Inference for Categorical and Numerical Data	&	8	&	Thu. 17-Oct	&	Inference for Numerical Data I	&	Ch. 5	&	---	\\
---	&	9	&	\color{red}{\bf{Sun. 20-Oct}}	&	---	&	---	&	\color{red}{\bf{Lab 04}}	\\
---	&	9	&	Tue. 22-Oct	&	Inference for Numerical Data II	&	---	&	---	\\
---	&	9	&	Thu. 24-Oct	&	Inference for Numerical Data III	&	---	&	---	\\
---	&	10	&	Tue. 29-Oct	&	Lab 05: Inference for Numerical Data	&	---	&	---	\\
---	&	10	&	Thu. 31-Oct	&	Inference for Categorical Data I	&	Ch. 6	&	---	\\
---	&	11	&	Tue. 05-Nov	&	Inference for Categorical Data II	&	---	&	---	\\
---	&	11	&	Thu. 07-Nov	&	Lab 06: Inference for Categorical Data	&	---	&	---	\\
---	&	12	&	\color{red}{\bf{Sun. 10-Nov}}	&	---	&	---	&	\color{red}{\bf{Lab 05}}	\\
---	&	12	&	Tue. 12-Nov	&	---	&	---	&	\color{red}{\bf{MQ 03}}	\\
\\											
\hline											
\\											
Simple and Multiple Regression	&	12	&	Thu. 14-Nov	&	Introduction to Linear Regression I	&	Ch. 7	&	---	\\
---	&	12	&	Tue. 19-Nov	&	Introduction to Linear Regression II	&	---	&	---	\\
---	&	13	&	Thu. 21-Nov	&	Multiple and Logistic Regression I	&	Ch. 8	&	---	\\
---	&	14	&	\color{red}{\bf{Sun. 24-Nov}}	&	---	&	---	&	\color{red}{\bf{Lab 06}}	\\
---	&	14	&	Tue. 26-Nov	&	Catch-Up/Lab Day	&	---	&	---	\\
---	&	14	&	Thu. 28-Nov	&	\color{red}{\bf{HOLIDAY}}	&	---	&	---	\\
---	&	15	&	Tue. 03-Dec	&	Multiple and Logistic Regression II	&	---	&	---	\\
---	&	15	&	Thu. 05-Dec	&	Final Exam Review	&	---	&	---	\\
\\											
\hline											
\\											
---	&	16	&	Thur. 12-Dec	&	\color{red}{\bf{\em{FINAL EXAM, 10:30 AM}}}	&	---	&	---	\\
\end{longtable}
\end{center}

\end{landscape}

\end{document}

```

