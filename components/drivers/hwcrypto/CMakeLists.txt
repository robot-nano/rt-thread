include_directories(${CMAKE_CURRENT_SOURCE_DIR})

list(APPEND DRIVER_SRCS hwcrypto.c)
## driver hwcrypto
if (RT_HWCRYPTO_USING_AES
	OR RT_HWCRYPTO_USING_DES
	OR RT_HWCRYPTO_USING_3DES
	OR RT_HWCRYPTO_USING_RC4)
	list(APPEND DRIVER_SRCS hwcrypto/hw_symmetric.c)
	if (RT_HWCRYPTO_USING_GCM)
		list(APPEND DRIVER_SRCS hwcrypto/hw_gcm.c)
	endif ()
endif ()

if (RT_HWCRYPTO_USING_MD5
	OR RT_HWCRYPTO_USING_SHA1
	OR RT_HWCRYPTO_USING_SHA2)
	list(APPEND DRIVER_SRCS hwcrypto/hw_hash.c)
endif ()

if (RT_HWCRYPTO_USING_RNG)
	list(APPEND DRIVER_SRCS hwcrypto/hw_rng.c)
endif ()

if (RT_HWCRYPTO_USING_CRC)
	list(APPEND DRIVER_SRCS hwcrypto/hw_crc.c)
endif ()

if (RT_HWCRYPTO_USING_BIGNUM)
	list(APPEND DRIVER_SRCS hwcrypto/hw_bignum.c)
endif ()