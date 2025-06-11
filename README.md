# MultiSend-Using-BLOCK-CHAIN-Technology
# Multi-Send Smart Contract

## Description

The **MultiSend** smart contract is designed to allow users to send Ether to multiple Ethereum addresses in a single transaction. This contract is particularly useful for:

- ✅ Bulk payments  
- ✅ Salary distribution  
- ✅ Token airdrops  

It divides the total Ether sent equally among all recipient addresses and refunds any remaining balance (if the total value is not perfectly divisible) back to the sender.

---

## Features

- Allows sending Ether to multiple recipients in one go.
- Ensures equal distribution of Ether.
- Automatically refunds any leftover wei to the sender.
- Sets the deploying user as the contract owner.

---

## How to Use on Remix IDE

### Step 1: Open Remix IDE
Visit [https://remix.ethereum.org](https://remix.ethereum.org) in your browser.

### Step 2: Create and Name the Contract File
- Click on the "File Explorer" icon.
- Create a new file and name it `MultiSend.sol`.

### Step 3: Paste the Contract Code
- Copy and paste the Solidity smart contract into the file.

### Step 4: Compile the Contract
- Go to the **Solidity Compiler** tab.
- Choose compiler version `^0.8.0` or higher.
- Click **Compile**.

### Step 5: Deploy the Contract
- Go to the **Deploy & Run Transactions** tab.
- Select the environment (e.g., JavaScript VM, Injected Web3, or Remix VM).
- Click **Deploy** to deploy the contract.

### Step 6: Interact with the Contract
- After deployment, you’ll see the deployed contract in the sidebar.
- Use the `sendEther` function:
  - Enter an array of Ethereum addresses in the input field.
  - Enter a total ETH value in the "Value" field.
  - Click **transact**.

---

## Example Use Case

If you enter 1 ETH and 4 recipient addresses, each will receive 0.25 ETH. If there’s any leftover due to division, it will automatically be returned to the sender’s wallet.

---

## Important Notes

- Must provide at least one recipient address.
- A non-zero amount of Ether must be sent.
- Gas fees will be applied depending on the number of recipients.
- All addresses must be valid Ethereum addresses.

---

## License

This project is licensed under the **MIT License**.

---

## 👨‍💻 Author

**Vemunuri Subhash**  
B.Tech 2nd Year  
[Aurora University]
