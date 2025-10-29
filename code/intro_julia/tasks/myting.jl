using Statistics
mat = Matrix{Int64}(undef,3,4)
mat=zeros(3,4)
mat
#########
jebaczydow = Matrix{Int64}(undef,5,5)
for i in 1:5
    for j in 1:5
        jebaczydow[i,j] = i*j
    end
end
jebaczydow

############
huj = Matrix{Int64}(undef,3,4)
for l in 1:3
    for p in 1:4
        huj[l,p] =  l^p 
    end
end
huj
########
n_rows=3
n_cols=4
powertable = Matrix{Int64}(undef, n_rows,n_cols)
for i = 1:n_rows
    for j = 1:n_cols
        powertable[i,j] = i^j
    end
end
powertable
powertable[3,4]


########
function power_tbl(n_rows,n_cols)
    powertable = Matrix{Int64}(undef, n_rows,n_cols)
    for i = 1:n_rows
        for j = 1:n_cols
            powertable[i,j] = i^j
        end
    end
    return powertable
end
power_tbl(5,5)

######## vectorsss
n_goals = rand(1:15,15)
average = sum(n_goals)/length(n_goals)
demeaned = n_goals .- average
squared_d = demeaned.^2
variance = sum(squared_d)/(length(n_goals)-1)
sd = sqrt(variance)
std(n_goals)

n_huj = rand(1:15,12)
std(n_huj)

######## vectorsss
n_absences = rand(0:7,15)
grades = rand(1:5,15)

n_absences_bar = sum(n_absences)/length(n_absences)
grades_bar = sum(grades)/length(grades)
demeaned_absences = n_absences .-n_absences_bar
demeaned_grades = grades .-grades_bar
cov = sum(demeaned_absences.*demeaned_grades)/(length(n_absences)-1)
std_absences = sqrt(sum(demeaned_absences .^ 2) / (length(n_absences) - 1))
std_grades   = sqrt(sum(demeaned_grades  .^ 2) / (length(grades)     - 1))
cor = cov / (std_absences * std_grades)


