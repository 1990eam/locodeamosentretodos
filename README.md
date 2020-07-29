# LoCodeamos

LoCodeamos es una plataforma donde las personas pueden conectarse y sumarse a colaborar en torno a un proyecto, sugiriendo cambios y codeando para desarrollar las distintas features que se vayan proponiendo.

![Db Schema](https://github.com/1990eam/locodeamosentretodos/blob/master/app/assets/images/LocodeamosDBSchema.jpeg)


## Core User Stories

**Como Project Owner:**
* Si tengo una idea que me gustarìa desarrollar, como un usuario puedo **crear un proyecto**.
* Como creador del proyecto, puedo abrir **Roles** a cubrir.
* Los **Roles** tienen **Requirements** a cubrir: una **tecnologìa** en particular y un **skill level** en esa tecnologìa (por ejemplo un rol de nombre Backend Dev puede tener como requirement un nivel Junior en la tecnologìa Ruby).

**Como Developer:**
* Como un usuario voy a tener determinados **skills**.
* Los **skills** estan compuestos de una **tecnologìa** y un **skill level**.
* Como un usuario puedo solicitar unirme a un proyecto, a travès de una **Application** para cubrir un Role que estè abierto en el proyecto.

**Applications:**
* Las **Applications** pueden pensarse como una especie de búsqueda laboral: un Developer aplica para cubrir un **Role** como parte de un Project, lo cual inicia una application. 
* Esta application queda en status **"Pending Review from Project Owner"** hasta que el mismo decide rechazarla o aceptarla. 
* Una vez aceptada, pasa a quedar **"Pending Review from Developer"** para que sea algo similar a la firma de un contrato de trabajo luego de una entrevista, instando al Developer a poner la "firma final".
* Una vez aceptada la application por ambas partes, el Developer pasa a cubrir el **Role**, hasta ese momento vacante.
