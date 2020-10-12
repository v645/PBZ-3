create 
(H :chemElement{name:'водород',number:'1',protons:'1',neutrons:'0',electrons:'1'}),
(D:chemElement{name:'дейтерий',number:'1',protons:'1',neutrons:'1',electrons:'1'}),
(T :chemElement{name:'тритий',number:'1',protons:'1',neutrons:'2',electrons:'1'}),
(He :chemElement{name:'гелий',number:'2',protons:'2',neutrons:'2',electrons:'2'}),
(He3 :chemElement{name:'гелий-3',number:'2',protons:'2',neutrons:'1',electrons:'2'}),
(O :chemElement{name:'кислород',number:'8',protons:'8',neutrons:'8',electrons:'8'}),

(H20 :molecule{name:'вода'}),
(O3 :molecule{name:"озон"}),
(O2 :molecule{name:"молекула кислорода"}),
(H2O2 :molecule{name:"пероксид водорода"}),
(H2 :molecule{name:"молекула водорода"}),


(H20)-[:contain{number:"2"}]->(H),
(H20)-[:contain{number:"1"}]->(O),
(O3)-[:contain{number:"3"}]->(O),
(O2)-[:contain{number:"2"}]->(O),
(H2O2)-[:contain{number:"2"}]->(O),
(H2O2)-[:contain{number:"2"}]->(H),
(H2)-[:contain{number:"2"}]->(H),


(D)-[:isotope{name:"изотоп"}]->(H),
(T)-[:isotope{name:"изотоп"}]->(H),
(He3)-[:isotope{name:"изотоп"}]->(He),


(first_period :period{name:'первый период'}),
(second_period :period{name:'второй период'}),

(first_group :group{name: "первая группа"}),
(six_group :group{name: "шестая группа"}),
(eight_group :group{name: "восьмая группа"}),

(H)-[:принадлежит]->(first_period),
(He)-[:принадлежит]->(first_period),
(O)-[:принадлежит]->(second_period),



(H)-[:принадлежит]->(first_group),
(He)-[:принадлежит]->(eight_group),
(O)-[:принадлежит]->(six_group)