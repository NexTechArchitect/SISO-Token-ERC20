.PHONY: build test clean snapshot format deploy mint burn pause unpause allowance verify

build:
	forge build

test:
	forge test

clean:
	forge clean

snapshot:
	forge snapshot

format:
	forge fmt

deploy:
	forge script script/DeploySisoToken.s.sol:DeploySisoToken --rpc-url $$SEPOLIA_RPC_URL --private-key $$PRIVATE_KEY --broadcast

mint:
	forge script script/MintSisoToken.s.sol:MintSisoToken --rpc-url $$SEPOLIA_RPC_URL --private-key $$PRIVATE_KEY --broadcast

burn:
	forge script script/BurnSisoToken.s.sol:BurnSisoToken --rpc-url $$SEPOLIA_RPC_URL --private-key $$PRIVATE_KEY --broadcast

pause:
	forge script script/PauseSisoToken.s.sol:PauseSisoToken --rpc-url $$SEPOLIA_RPC_URL --private-key $$PRIVATE_KEY --broadcast

unpause:
	forge script script/UnpauseSisoToken.s.sol:UnpauseSisoToken --rpc-url $$SEPOLIA_RPC_URL --private-key $$PRIVATE_KEY --broadcast

allowance:
	forge script script/SisoAllowance.s.sol:SisoAllowance --rpc-url $$SEPOLIA_RPC_URL --private-key $$PRIVATE_KEY --broadcast

verify:
	forge verify-contract $$SISO_CONTRACT_ADDRESS src/SisoToken.sol:SisoToken $$ETHERSCAN_API_KEY --chain sepolia