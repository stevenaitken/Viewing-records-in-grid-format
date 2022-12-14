<?php

if ($stmt = $conn->prepare("SELECT profilePic, work, life, artist FROM customers")) {
  $stmt->execute(); // execute sql statement
  $result = $stmt->get_result(); //returns the results from sql statement

  
  // output data of each row
  while ($row = $result->fetch_assoc()) { //fetches one row of data from the results set. Continues until there are no more rows
    echo '<tr>';
    echo '<td><p><strong>' . $row['artist'] . '</strong></p></td><td>' . $row['work'] . '</td>' . '<td>' . $row['life'] . '</td>' . '<td><img src=' . '"' . $row['profilePic'] . '"' . '></td>';
    echo '</tr>';

  }

  $stmt->close(); // close sql statement - optional and depends on context
  $conn->close(); // close dbase connection - optional and depend on context

}
?>