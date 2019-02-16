<game>
  <h1>Zootopia Pets</h1>

	<img src="images/{ petsImg }.png" ref="pets" class="center">
	<img src="assets/{ thingsImg }.png" ref="things" class="center">

	<div>
	  <button onclick={ changePets }>Change Pets</button>
	  <button onclick={ changeThings }>Change Things</button>
	  <button onclick={ reset } show={ hearts <= 0 }>RESET</button>
	</div>

	<info-console logs={ userLogs }></info-console>

	<script>
		var tag = this;

		this.petsImg = "judy";
		this.thingsImg = "butterfly";
		this.userLogs = [];

		reset(event) {
			this.userLogs = [];
		}

		changePets() {
			if (this.petsImg == "judy") {
				this.petsImg = "nick";
				this.addToLog('You change your pet to a fork.');
			} else if(this.petsImg == "nick") {
				this.petsImg = "flash";
				this.addToLog('You change your pet to a sloth.');
			} else if(this.petsImg == "flash") {
				this.petsImg = "bogo";
				this.addToLog('You change your pet to an ox.');
			} else if(this.petsImg == "bogo") {
				this.petsImg = "judy";
				this.addToLog('You change your pet to a bunny.');
		  }
		}

		changeThings() {
			if (this.thingsImg == "butterfly") {
				this.thingsImg = "meat";
				this.addToLog('This is meat.');
			} else if(this.thingsImg == "meat") {
				this.thingsImg = "carrot";
				this.addToLog('This is a carrot.');
			} else if(this.thingsImg == "carrot") {
				this.thingsImg = "grass";
				this.addToLog('These are grasses.');
			} else if(this.thingsImg == "grass") {
				this.thingsImg = "butterfly";
				this.addToLog('This is a butterfly.');
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
			background-color: coral;
			border: 1px solid navy;
			cursor: pointer;
		}
		
	
	</style>
</game>
