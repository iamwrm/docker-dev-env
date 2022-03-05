cat > test_out.txt <<EOL
{
	"schemaVersion": 2,
	"mediaType": "application/vnd.docker.distribution.manifest.v2+json",
	"config": {
		"mediaType": "application/vnd.docker.container.image.v1+json",
		"size": 4689,
		"digest": "sha256:2615ede0af35b3b2e6c374c04825d5fe7bd441f7774295906e62417c8c3555f2"
	},
	"layers": [
		{
			"mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
			"size": 76097157,
			"digest": "sha256:2d473b07cdd5f0912cd6f1a703352c82b512407db6b05b43f2553732b55df3bc"
		},
		{
			"mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
			"size": 602633734,
			"digest": "sha256:318273fdeb16d95c12ef19cd009a7abf752ee1b7969b91ff1bc09758325ea555"
		},
		{
			"mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
			"size": 153,
			"digest": "sha256:6cf4b3127ba1315e640d45607c605c4114d9dd2fd5ec1cd9ff9b39edc6295e3e"
		},
		{
			"mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
			"size": 14998078,
			"digest": "sha256:cc7a989b78c013b75004b6ec94dfe445d2c23770958c639867996b0959fd932d"
		}
	]
}
EOL


cat test_out.txt | jq '[.layers[] | .size] | add' | awk '{print $1/1024/1024}'