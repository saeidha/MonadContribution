# Monad testnet
forge script script/Deploy.s.sol:DeployScript \
  --rpc-url https://testnet-rpc.monad.xyz \
  --private-key $pk \
  --broadcast

# Base testnet
forge script script/Deploy.s.sol:DeployScript \
  --rpc-url https://sepolia.base.org \
  --private-key $pk \
  --broadcast
  --verify -vvvv