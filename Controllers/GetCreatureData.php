<?php include 'CURLcontroller.php';

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of GetCreatureData
 *
 * @author aejan
 */
static $url = "http://localhost:8080/LARP/api/getCreatureData/";
$data = Array();

 function GetCreatureTypes()
{
     
     global $url;
    $results = json_decode(CallAPI("GET",$url."getCreatureTypes", $data=""),TRUE);  
     $resultList = array();
     
     foreach ($results as $result)
        {
            foreach($result as $fineResult)
            {
                $resultList[] = $fineResult;
            }
        }
      //  print_r($resultList);
  return $resultList;
    
}

 function GetCreatureNames()
{
     
     global $url;
            
 $results = json_decode(CallAPI("GET", "http://localhost:8080/LARP/api/getCreatureData/getCreatureNames", $data=""),TRUE);  
    
     $resultList = array();
     
     foreach ($results as $result)
        {
            foreach($result as $fineResult)
            {
                $resultList[] = $fineResult;
            }
        }
      //  print_r($resultList);
  return $resultList;
}

?>