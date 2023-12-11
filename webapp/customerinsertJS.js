/**
 * 
 */
function checkPassword(){
	if(document.getElementById("psw").value != document.getElementById("confrmpsw").value){
		alert("Password Mismatch");
		return false;
	}
	else{
		alert("Success");
		return true;
	}
}