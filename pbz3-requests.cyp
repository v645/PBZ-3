
match (n:chemElement) return n

match (n:chemElement) where n.neutrons<n.protons return n

match (m:molecule {name:"вода"})-[:contain]->(n:chemElement) return n

match (m:molecule {name:"пероксид водорода"})-[:contain]->(n:chemElement)-[:`принадлежит`]->(g:group) return g

match (m:group)<-[]-(n) return m,n

match (m:molecule)-[]->(:chemElement{name:"водород"}) return m 

match (m:molecule)-[]->(:chemElement{protons:"1"}) return m

match (m:molecule)-[:contain{number:"2"}]->(n:chemElement) return m,n

match (n1:chemElement)-[:isotope]->(n2:chemElement) return n1,n2

match (n1:chemElement)-[:isotope]->(n2:chemElement)-[]->(:period{name:'первый период'}) where n2.electrons>=2 return n1,n2

match (n:chemElement) return n.name,n.protons,n.neutrons order by (n.neutrons+n.protons) desc