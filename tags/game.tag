<game>
  <h1>Zootopia Pets</h1>

	<img src="images/{ petsImg }.png" class="center">
	<img src="assets/{ foodImg }.png" class="center">

	<div>
	  <button onclick={ changePets }>Change Pets</button>
	  <button onclick={ changeFood }>Change Food</button>
	  <button onclick={ reset } show={ "" }>RESET</button>
	</div>


	<card show={ matchPet() }></card>

	<info-console logs={ userLogs }></info-console>

	<script>
		let tag = this;

    this.cards = [
		{
		  pet: "Judy",
		  food: "carrot"
		},
		{
		  pet: "Nick",
		  food: "meat"
		},
		{
		  pet: "Flash",
		  food: "leaf"
		},
		{
			pet: "Bogo",
		  food: "grass"
	  }
	];

		this.petsImg = "Judy";
		this.foodImg = "leaf";
		this.userLogs = [];


		reset(event) {
			this.userLogs = [];
		}

		changePets() {
			if (this.petsImg == "Judy") {
				this.petsImg = "Nick";
				this.addToLog('You change your pet to a fox.');
			} else if(this.petsImg == "Nick") {
				this.petsImg = "Flash";
				this.addToLog('You change your pet to a sloth.');
			} else if(this.petsImg == "Flash") {
				this.petsImg = "Bogo";
				this.addToLog('You change your pet to an ox.');
			} else if(this.petsImg == "Bogo") {
				this.petsImg = "Judy";
				this.addToLog('You change your pet to a bunny.');
		  }
		}

		changeFood() {
			if (this.foodImg == "leaf") {
				this.foodImg = "meat";
				this.addToLog('This is meat.');
			} else if(this.foodImg == "meat") {
				this.foodImg = "carrot";
				this.addToLog('This is a carrot.');
			} else if(this.foodImg == "carrot") {
				this.foodImg = "grass";
				this.addToLog('These are grasses.');
			} else if(this.foodImg == "grass") {
				this.foodImg = "leaf";
				this.addToLog('This is leaf.');
		  }
		}

		matchPet() {
			if(this.petsImg == "Judy" && this.foodImg == "carrot") {

				this.addToLog('Feed Judy with carrot.');
				return true;
			} else if(this.petsImg == "Nick" && this.foodImg == "meat") {
				this.addToLog('Feed Nick with meat.');
				return true;
			} else if(this.petsImg == "Flash" && this.foodImg == "leaf") {
				this.addToLog('Feed Flash with leaf.');
				return true;
			} else if(this.petsImg == "Bogo" && this.foodImg == "grass") {
				this.addToLog('Feed Bogo with grass.');
				return true;
			}
		}

		addToLog(msg) {
			this.userLogs.push(msg);
		}

	</script>

	<style>
		:scope {
			display: block;
			font-family: Helvetica;
			text-align: center;
		}
		h1 {
			padding-bottom: 1em;
			border-bottom: 1px solid #DDD;
		}
		.center {
			display: in-line block;
			margin: 10px 10px;
			width: 20%;
		}
		button {
			font-size: 1.5em;
			padding: 0.5em;
			border-radius: 0.25em;
			background-color: rgb(82, 189, 255);
			border: none;
			cursor: pointer;
      margin: 0 20px;
		}
    card {
      margin: 20px auto;
      width: 60%;
    }

	</style>
</game>
