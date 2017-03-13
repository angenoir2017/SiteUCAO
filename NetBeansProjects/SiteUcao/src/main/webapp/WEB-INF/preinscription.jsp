<%-- 
    Document   : preinscription
    Created on : 9 mars 2017, 14:13:48
    Author     : barry
--%>

<!DOCTYPE html>
<html>
    
  <head>
    <title>Pr�-Inscription en ligne</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="assets/css/Preinscription.css" rel="stylesheet" media="screen">
    <!--<link href="./assets/css/bootstrap.min.css" rel="stylesheet" media="screen">-->
    
  </head>
  <body>
      
      
      
      
      <h1 id="pagetitle">Pr�-inscription en ligne</h1>
      
      <p>
          Utilisez ce formulaire pour votre pr�inscription �lectronique � l'Universit� Catholique de l'Afrique de l'Ouest - Unit� Universitaire du Togo.
          <br>NB :</p>
      <ol>
          <li>Avant de remplir ce formulaire, vous devez:
              <ol type="a">
                  <li>imprimer le bon de versement ci dessous,</li>
                  <li>payer � la banque les frais d'�tude de dossier en pr�sentant ce bon de versement,</li>
                  <li>scanner le re�u de paiement de la banque et le bon de versement (vis� par la banque), afin de les joindre au formulaire de pr�-inscription en ligne ci-dessous.</li>
              </ol>           
          </li>
          
          <li>Cette inscription en ligne doit �tre valid�e par une inscription d�finitive par le candidat sur le campus de l'Universit� � Sangu�ra.</li>
          <li>Tous les documents doivent �tre scann�s dans des fichiers au format PDF, et la taille maximale de chacun est de 2 Mo.</li>
      </ol>
      
      
      <div>
          <em id="pagetitle"><strong>Fichiers attach�s:</strong></em>
          <p>La place du fichier du bon de versement</p>
      </div>
      
          <form>
            
              <fieldset> <!--Fieldset pour l identit�-->
                        <legend id="fieldset">identit�</legend>
                       
                        <!--Pour le nom-->
                        <div  class="form-group">
                            <label for="nom">Nom</label> <span title="Champ requis" id="asterix">*</span>                            
                            <input type="text"  class="form-control" id="nom" placeholder="Votre nom de famille" >                            
                            
                        </div>
                        
                        <!--Pour le pr�nom-->
                        <div  class="form-group">
                            <label for="prenom">Pr�nom</label> <span title="Champ requis" id="asterix">*</span>                            
                            <input type="text"  class="form-control" id="prenom" placeholder="Pr�noms " >                            
                            
                        </div>
                        
                        <!--Pour le genre-->
                        <div  class="form-group">
                            <p>
                            <label for="genre">Genre</label> <span title="Champ requis" id="asterix">*</span> 
                            </p>
                            
                             <div class="form-check">      <!--Genre Feminin -->
                            <label class="form-check-label">
                                 <input type="radio" class="form-check-input" name="genre"
                                        id="feminin" value="Feminin" >
                                 
                                 F�minin
        
                            </label>
                            
                            </div>
                            
                            <div class="form-check">      <!--Genre Masculin -->
                            <label class="form-check-label">
                                 <input type="radio" class="form-check-input" name="genre"
                                        id="masculin" value="masculin" >
                                Masculin        
                            </label>
                            
                        </div>                 
                        
                        </div>
                        
                        
                        <!--Pour la date de naissance-->
                        
                        <div class="form-group"> <!-- Date input -->
                            <label class="control-label" for="date">Date</label>
                            <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
                        </div>
                            
       
                       <!-- Lieu de naissance-->
                       
                       <div  class="form-group">
                            <label for="lieudenaissance">Lieu de naissance</label> <span title="Champ requis" id="asterix">*</span>                            
                            <input type="text"  class="form-control" id="nom">                            
                            
                        </div>
                       
                       
                       <!-- Pays de naissance -->
                       
                       <div class="form-group">
                            <label for="Pays">Pays de naissance</label>
                            <select class="form-control" id="pays">
                              
                            </select>
                       </div>
                       
                       
                       <!-- Lieu de naissance-->
                       
                       <div  class="form-group">
                            <label for="prefecture">Prefecture</label>                            
                            <input type="text"  class="form-control" id="prefecture">                            
                            
                        </div>
                       
                       <!-- nationalit� -->
                       
                       <div class="form-group">
                            <label for="nationalite">nationalit�</label> <span title="Champ requis" id="asterix">*</span>
                            <select class="form-control" id="nationalite">
                              
                            </select>
                       </div>
                       
                       <!-- R�ligion -->
                       
                       <div class="form-group">
                            <label for="religion">R�ligion</label> <span title="Champ requis" id="asterix">*</span>
                            <select class="form-control" id="religion">
                              
                            </select>
                       </div>
                       
                       <!-- Groupe Sanguin -->
                       
                       <div class="form-group">
                            <label for="sanguin">Groupe Sanguin</label> <span title="Champ requis" id="asterix">*</span>
                            <select class="form-control" id="sanguin">
                              
                            </select>
                       </div>
                       
                       <!--Pour La situation-->
                        <div  class="form-group">
                            <p>
                            <label for="situation">Situation Matrimoniale</label> <span title="Champ requis" id="asterix">*</span> 
                            </p>
                            
                             <div class="form-check">      <!--C�libataire -->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="situation"
                                            id="celibataire" value="celibataire" >

                                     C�libataire

                                </label>
                            
                            </div>
                            
                            <div class="form-check">      <!--Mari� -->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="situation"
                                            id="marie" value="marie" >
                                    Mari�(e)        
                                </label>
                            
                            </div>                 
                            
                            <div class="form-check">      <!--Divorc� -->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="situation"
                                            id="divorce" value="divorce" >
                                    Divorc�(e)        
                                </label>

                            </div>
                            
                            <div class="form-check">      <!--Veuf -->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="situation"
                                            id="veuf" value="veuf" >
                                    Veuf(ve)       
                                </label>

                            </div>
                        
                        </div>
                       
                       <!-- Nom mari�-->
                       
                       <div  class="form-group">
                            <label for="nommariage">Nom et Pr�noms du(de la) conjoint(e) pour les mari�s </label>                            
                            <input type="text"  class="form-control" id="nommariage">                            
                            
                        </div>
                        
                        
            </fieldset>
              
              
            <fieldset> <!--Fieldset pour l information acad�mique-->
                        
                
                <legend id="fieldset">information acad�mique</legend>
                
                <!-- Serie BAC -->
                       
                       <div class="form-group">
                            <label for="serie">S�rie du BAC</label> 
                            <select class="form-control" id="serie">
                              
                            </select>
                       </div>       
                
                
                
                <!-- Autre Serie-->
                       
                       <div  class="form-group">
                            <label for="autreserie">Autre S�rie (pr�ciser) </label>                            
                            <input type="text"  class="form-control" id="autreserie">                            
                            
                        </div>
                
                
                <!-- Mention Obtenue -->
                       
                       <div class="form-group">
                            <label for="mention">Mention obtenue</label> <span title="Champ requis" id="asterix">*</span>
                            <select class="form-control" id="mention">
                              
                            </select>
                       </div> 
                
                
                
                <!-- Etablissement de provenance-->
                       
                       <div  class="form-group">
                            <label for="provenance">�tablissement de provenance</label> <span title="Champ requis" id="asterix">*</span>                           
                            <input type="text"  class="form-control" id="provenance">                            
                            
                        </div>
                
                <!-- Numero de table-->
                       
                       <div  class="form-group">
                            <label for="numtable">N�de table </label>                            
                            <input type="text"  class="form-control" id="numtable">                            
                            
                        </div>
                <!-- Pays du BAC -->
                       
                       <div class="form-group">
                            <label for="paysbac">Pays du BAC</label> <span title="Champ requis" id="asterix">*</span>
                            <select class="form-control" id="paysbac">
                              
                            </select>
                       </div> 
                
                <!-- Ann�e du BAC-->
                       
                       <div  class="form-group">
                            <label for="anneebac">Ann�e du BAC</label> <span title="Champ requis" id="asterix">*</span>                           
                            <input type="date"  class="form-control" id="anneebac">                            
                            
                        </div>
                
                <!-- Autre diplome-->
                       
                       <div  class="form-group">
                            <label for="diplome">Autre dipl�me </label>                            
                            <input type="text"  class="form-control" id="diplome">                            
                            
                        </div>
                
                <!-- Domaine choisi -->
                       
                       <div class="form-group">
                            <label for="choixdomaine">Domaine choisi</label> <span title="Champ requis" id="asterix">*</span>
                            <select class="form-control" id="choixdomaine">
                              
                            </select>
                       </div> 
                
                <!-- Parcours choisi -->
                       
                       <div class="form-group">
                            <label for="choixparcours">Parcours choisi</label> <span title="Champ requis" id="asterix">*</span>
                            <select class="form-control" id="choixparcours">
                              
                            </select>
                       </div> 
                
                <!--Niveau -->
                       
                       <div class="form-group">
                            <label for="niveau">Niveau</label> <span title="Champ requis" id="asterix">*</span>
                            <select class="form-control" id="niveau">
                              
                            </select>
                       </div>        
                
            </fieldset>  
              
            
            <fieldset> <!--Fieldset pour l adresse et l information complementaire-->  
                
                <legend id="fieldset">Adresse et Informations compl�mentaires</legend>
                
                <!--Adresse -->
                       
                       <div class="form-group">
                            <label for="adresse">Adresse</label> 
                            <p>
                                <textarea  id="adresse" rows="5" cols="150"> </textarea>
                            </p>
                       </div>        
                
                <!-- T�l�phone-->
                       
                       <div  class="form-group">
                            <label for="tel">T�l�phone</label> <span title="Champ requis" id="asterix">*</span>                           
                            <input type="tel"  class="form-control" id="tel">                            
                            
                        </div>
                
                <!-- email-->
                       
                       <div  class="form-group">
                            <label for="email">Email</label> <span title="Champ requis" id="asterix">*</span>                           
                            <input type="email"  class="form-control" id="email">                            
                            
                        </div>
                
                <!-- Ville de residence-->
                       
                       <div  class="form-group">
                            <label for="residence">Ville de R�sidence</label> <span title="Champ requis" id="asterix">*</span>                           
                            <input type="text"  class="form-control" id="residence">                            
                            
                        </div>
                
                
                
               
              
            
           <fieldset> <!--Fieldset pour personne � contacter-->  
                
                <legend id="fieldset">Personne � contacter </legend>
                
                <p id="couleurbizaare" >La personne � contacter en cas de besoin.</p>
                
                <!--Pour qui-->
                        <div  class="form-group">
                            <p>
                            <label for="qui">Qui</label> <span title="Champ requis" id="asterix">*</span> 
                            </p>
                            
                             <div class="form-check">      <!--Pere -->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="qui"
                                            id="pere" value="pere" >

                                       P�re

                                </label>
                            
                            </div>
                            
                             <div class="form-check">      <!--Mere -->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="qui"
                                            id="mere" value="mere" >

                                       M�re

                                </label>
                            
                            </div>
                            
                             <div class="form-check">      <!--Tuteur -->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="qui"
                                            id="tuteur" value="tuteur" >

                                       Tuteur / Tutrice

                                </label>
                            
                            </div>
                            
                            
                        </div>
                
                
                
                <!--Pour le nom-->
                        <div  class="form-group">
                            <label for="nom">Nom</label> <span title="Champ requis" id="asterix">*</span>                            
                            <input type="text"  class="form-control" id="nom"  >                            
                            
                        </div>
                        
                <!--Pour le pr�nom-->
                        <div  class="form-group">
                            <label for="prenom">Pr�nom</label> <span title="Champ requis" id="asterix">*</span>                            
                            <input type="text"  class="form-control" id="prenom"  >                            
                            
                        </div>
                        
                <!--Pour la  profession-->
                        <div  class="form-group">
                            <label for="profession">Profession</label> <span title="Champ requis" id="asterix">*</span>                            
                            <input type="text"  class="form-control" id="profession"  >                            
                            
                        </div>
                
                <!-- T�l�phone-->
                       
                       <div  class="form-group">
                            <label for="tel">T�l�phone</label> <span title="Champ requis" id="asterix">*</span>                           
                            <input type="tel"  class="form-control" id="tel">                            
                            
                        </div>
                
                <!-- email-->
                       
                       <div  class="form-group">
                            <label for="email">Email</label> <span title="Champ requis" id="asterix">*</span>                           
                            <input type="email"  class="form-control" id="email">                            
                            
                        </div>
                
                               
           </fieldset>
                
                <!-- nombre de frere et soeurs -->
                       
                       <div  class="form-group">
                            <label for="famille">Nombre de fr�res et soeurs</label> <span title="Champ requis" id="asterix">*</span>                           
                            <input type="text"  class="form-control" id="famille">                            
                            
                        </div>
                
                
            </fieldset>    
              
              <fieldset>
                  
                  <legend id="fieldset">Pour les salari�s </legend>
                      
                  
                   <!--Pour la  profession-->
                        <div  class="form-group">
                            <label for="profession">Profession</label>                             
                            <input type="text"  class="form-control" id="profession"  >                            
                            
                        </div>
                
                <!--Pour le nom de la soci�t�-->
                        <div  class="form-group">
                            <label for="societe">Nom de la soci�t� </label>                             
                            <input type="text"  class="form-control" id="societe"  >                            
                            
                        </div>  
                  
              </fieldset>
              
              <fieldset>
                  
                  <legend id="fieldset">Pour les boursiers  </legend>
                      
                  
                   <!--Pour les boursiers-->
                        <div  class="form-group">
                            <label for="bourse">Organisme donateur </label>                             
                            <input type="text"  class="form-control" id="bourse"  >                            
                            
                        </div>
                
                  
              </fieldset>
              
              
              <fieldset>
                  
                  <legend id="fieldset">Divers </legend>
                      
                  <!--Pour modalit� de paiement-->
                        <div  class="form-group">
                            <p>
                            <label for="paiement">Modalit� de paiement des frais d'�tude</label> <span title="Champ requis" id="asterix">*</span> 
                            </p>
                            
                             <div class="form-check">      <!--Totalit� -->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="paiement"
                                            id="totalite" value="totalite" >

                                       Totalit� de la scolarit� du semestre � l'inscription. 

                                </label>
                            
                            </div>
                            
                            <div class="form-check">      <!--moiti�-->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="paiement"
                                            id="moitie" value="moitie" >

                                        Moiti� de la totalit� de la scolarit� du semestre � l'inscription,
                                        et le reste un mois apr�s la rentr�e.  

                                </label>
                            
                            </div>
                            
                            
                            <div class="form-check">      <!--mensuel-->
                                <label class="form-check-label">
                                     <input type="radio" class="form-check-input" name="paiement"
                                            id="mensuel" value="mensuel" >

                                         Paiement par mensualit� de la scolarit� du semestre, pendant 04 mois. 
                                </label>
                            
                            </div>
                            
                        </div>
                  
                  <!--Pour logement-->
                        <div  class="form-group">
                            <p>
                            <label for="logement">Voulez-vous �tre log� � la cit�?</label> <span title="Champ requis" id="asterix">*</span> 
                            </p>
                            
                             <div class="form-check">      <!--Oui -->
                            <label class="form-check-label">
                                 <input type="radio" class="form-check-input" name="logement"
                                        id="oui" value="oui" >
                                 
                                 Oui
        
                            </label>                           
                            
                        </div>                 
                        
                            
                        
                        <div class="form-check">      <!--Non -->
                            <label class="form-check-label">
                                 <input type="radio" class="form-check-input" name="logement"
                                        id="non" value="non" >
                                 
                                 Non
        
                            </label>                          
                                
                        </div>
                        
                </div>
                  
                  
                  
               <!--Donner la raison -->
                       
                       <div class="form-group">
                            <label for="raison">Si oui donnez la raison </label> 
                            <p>
                                <textarea  id="raison" rows="5" cols="150"> </textarea>
                            </p>
                       </div>    
               
               <!--Comment avez-vous connu l'UCAO-UUT ? -->
                       
                       <div class="form-group">
                            <label for="explication">Comment avez-vous connu l'UCAO-UUT ?</label> <span title="Champ requis" id="asterix">*</span>
                            <p>
                                <textarea  id="explication" rows="5" cols="150"> </textarea>
                            </p>
                       </div>    
                  
              </fieldset>
              
              
              
              
              
                      
              
              <fieldset>
                  
              <legend id="fieldset">Notes de classe et d'examens </legend>    
                  
              <table >
                  
                  <label><strong>Seconde</strong></label>
                  
                 
                      <thead>
                          
                          <tr>
                              
                              <th>&nbsp;</th>
                              <th> &nbsp;  Trimestre 1 / Semestre 1</th>
                              <th>  &nbsp;   Trimestre 2 / Semestre 2</th>
                              <th>    &nbsp; Trimestre 3</th>
                              
                          </tr>
                          
                      </thead>
                      
                      
                          <tbody>
                              
                              <tr >
                                  <td>Anglais</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                          <tbreak>
                              <tr>
                                  <td>Francais</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Histoire-G�ographie</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Philosophie</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Math�matiques</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Math�matiques</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              
                          </tbody>  
                  
                  
              </table>    
                  
              
              <table >
                  
                  <label><strong>Premi�re</strong></label>
                  
                 
                      <thead>
                          
                          <tr>
                              
                              <th>&nbsp;</th>
                              <th> &nbsp;  Trimestre 1 / Semestre 1</th>
                              <th>  &nbsp;   Trimestre 2 / Semestre 2</th>
                              <th>    &nbsp; Trimestre 3</th>
                              
                          </tr>
                          
                      </thead>
                      
                      
                          <tbody>
                              
                              <tr >
                                  <td>Anglais</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                          <tbreak>
                              <tr>
                                  <td>Francais</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Histoire-G�ographie</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Philosophie</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Math�matiques</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Math�matiques</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              
                          </tbody>  
                  
                  
              </table>
              
              <table >
                  
                  <label><strong>Terminale</strong></label>
                  
                 
                      <thead>
                          
                          <tr>
                              
                              <th>&nbsp;</th>
                              <th> &nbsp;  Trimestre 1 / Semestre 1</th>
                              <th>  &nbsp;   Trimestre 2 / Semestre 2</th>
                              <th>    &nbsp; Trimestre 3</th>
                              
                          </tr>
                          
                      </thead>
                      
                      
                          <tbody>
                              
                              <tr >
                                  <td>Anglais</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                          <tbreak>
                              <tr>
                                  <td>Francais</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Histoire-G�ographie</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Philosophie</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Math�matiques</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Math�matiques</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              
                          </tbody>  
                  
                  
              </table>
              
              <table >
                  
                  <label><strong>Examens</strong></label>
                  
                 
                      <thead>
                          
                          <tr>
                              
                              <th>&nbsp;</th>
                              <th> &nbsp;  Trimestre 1 / Semestre 1</th>
                              <th>  &nbsp;   Trimestre 2 / Semestre 2</th>
                              <th>    &nbsp; Trimestre 3</th>
                              
                          </tr>
                          
                      </thead>
                      
                      
                          <tbody>
                              
                              <tr >
                                  <td>Anglais</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                          <tbreak>
                              <tr>
                                  <td>Francais</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Histoire-G�ographie</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Philosophie</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Math�matiques</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              <tr>
                                  <td>Math�matiques</td>
                                  <td></td>
                                  <td></td>
                                  <td></td>                                  
                              </tr>
                              
                              
                          </tbody>  
                  
                  
              </table>
              
                  
              </fieldset>
              
              <fieldset>
                  
                  <legend id="fieldset">Documents   </legend>
                  
                  <!-- Recu de paiement-->
                  
                  <div  class="form-group">
                      <label for="recu"id="recu"><strong>Re�u de paiement des frais d'�tude de dossier</strong>  </label> <span title="Champ requis" id="asterix">*</span>                            
                      <div>
                          <input type="file" name="recupaiement" value="envoye" class="document"  />
                          <input type="submit" value="Transferer" class="transferer" />
                      </div>
                      <div class="description">Les fichiers doivent peser moins de <strong>2 Mo</strong>
                          .<br />Extensions autoris�es : <strong>gif jpg jpeg png pdf</strong>.</div>
                  
                  
                  </div>
                     
                <!-- Releve de note-->
                  
                  <div  class="form-group">
                      <label for="releve"id="notes"><strong>Relev�s de notes du BAC</strong>  </label> <span title="Champ requis" id="asterix">*</span>                            
                      <div>
                          <input type="file" name="recupaiement" value="envoye" class="document"  />
                          <input type="submit" value="Transferer" class="transferer" />
                      </div>
                      <div class="description">Les fichiers doivent peser moins de <strong>2 Mo</strong>
                          .<br />Extensions autoris�es : <strong>gif jpg jpeg png pdf</strong>.</div>
                  
                  
                  </div>                  
              </fieldset>
              
              <input type="submit" value="Soumettre" class="transferer" />
              
              
         </form>
      
      

      
      
      
      
      
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
  </body>
</html>

