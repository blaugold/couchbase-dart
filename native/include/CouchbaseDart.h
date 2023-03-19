
#ifdef __cplusplus
extern "C" {
#endif

typedef struct CBDConnection_ CBDConnection;

CBDConnection *CBDConnection_Create();

void CBDConnection_Destroy(CBDConnection *connection);

#ifdef __cplusplus
} // extern "C"
#endif
