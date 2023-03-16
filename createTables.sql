CREATE TABLE IF NOT EXISTS departments
    (
    id NUMBER(3) CONSTRAINT dept_id_pk PRIMARY KEY,  
    department VARCHAR2(30) CONSTRAINT dep_name_nn NOT NULL     
    )
;

CREATE TABLE IF NOT EXISTS jobs
    (
    id NUMBER(3) CONSTRAINT jobs_id_pk PRIMARY KEY, 
    job VARCHAR2(30) CONSTRAINT job_job_nn NOT NULL   
    )
;


CREATE TABLE IF NOT EXISTS hired_employees
    (
    id NUMBER(3) CONSTRAINT id_pk PRIMARY KEY,
    name VARCHAR2(30), 
    department_id NUMBER(4),    
    job_id NUMBER(4), 
    datetime DATE DEFAULT SYSDATE,
    CONSTRAINT dpt_fk FOREIGN KEY (department_id)
        REFERENCES departments(id)  
        ON DELETE SET NULL, 
    CONSTRAINT job_fk FOREIGN KEY (job_id)   
        REFERENCES jobs(id)
        ON DELETE SET NULL 
  
    )
;
