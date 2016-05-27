var app = angular.module('studies', []);

var StudySearchController = function($scope) {
	$scope.search = function(searchTerm) { 
		$scope.searchedFor = searchTerm;
	}
}

app.controller("StudySearchController", [
		"$scope", "$http",
		function ($scope , $http) {
			$scope.studies = [];
$scope.search = function(searchTerm) {
	if (searchTerm.length < 3) {
		return
	}
	$http.get("/studies.json",
		{"params": {"keywords": searchTerm } }
	) .then(function(response) {
		$scope.studies = response.data;
	},function(response) {
		alert("There was a problem: " + response.status);
	
	}
	);
}
}



]);

		

