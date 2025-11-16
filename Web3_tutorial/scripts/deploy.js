const {ethers}  =require("hardhat")

async function main(){
    const factory = await ethers.getContractFactory("HelloWorld")
    console.log("contract deploying")
    const helloWorld = await factory.deploy()
    await helloWorld.waitForDeployment()
    console.log("contract has been deployed succeffully,contract address is " + helloWorld.target)

    await hre.run() 
}

main().then().catch((error)=>{
    console.error(error)
    process.exit(1)
})