.class public Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;
.super Ljava/lang/Object;
.source "SimcardAuthenticationManagerImpl.java"

# interfaces
.implements Lcom/orange/authentication/simcard/SimCardAuthenticationManager;


# static fields
.field private static final AKA_FAILURE:I = 0xdc

.field private static final AKA_SUCCESS:I = 0xdb

.field private static final APPTYPE_CSIM:I = 0x4

.field private static final APPTYPE_RUIM:I = 0x3

.field private static final APPTYPE_SIM:I = 0x1

.field private static final APPTYPE_USIM:I = 0x2

.field public static final DBG:Z = false

.field private static final GET_GSM_RESP_SIM:[B = null

.field private static final GET_GSM_RESP_USIM:[B = null

.field private static final GSM_RAND_LEN:I = 0x10

.field private static final RUN_AKA_ALG_CMD_USIM:[B = null

.field private static final RUN_GSM_ALG_CMD_SIM:[B = null

.field private static final RUN_GSM_ALG_CMD_USIM:[B = null

.field private static final SELECT_FILE_AKA_USIM:[B = null

.field private static final SELECT_FILE_SIM_GSM:[B = null

.field private static final SELECT_FILE_USIM_GSM:[B = null

.field private static final TAG:Ljava/lang/String; = "SimcardAuthenticationManager"

.field private static final TYPE_AKA:I = 0x2

.field private static final TYPE_GSM:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x7

    const/4 v1, 0x5

    .line 60
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->SELECT_FILE_SIM_GSM:[B

    .line 64
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->SELECT_FILE_USIM_GSM:[B

    .line 68
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->RUN_GSM_ALG_CMD_SIM:[B

    .line 72
    new-array v0, v3, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->RUN_GSM_ALG_CMD_USIM:[B

    .line 76
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->GET_GSM_RESP_SIM:[B

    .line 80
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->GET_GSM_RESP_USIM:[B

    .line 91
    new-array v0, v2, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->SELECT_FILE_AKA_USIM:[B

    .line 95
    new-array v0, v3, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->RUN_AKA_ALG_CMD_USIM:[B

    return-void

    .line 60
    :array_0
    .array-data 0x1
        0xa0t
        0xa4t
        0x0t
        0x0t
        0x2t
        0x7ft
        0x20t
    .end array-data

    .line 64
    :array_1
    .array-data 0x1
        0x0t
        0xa4t
        0x8t
        0xct
        0x2t
        0x7ft
        0xfft
    .end array-data

    .line 68
    :array_2
    .array-data 0x1
        0xa0t
        0x88t
        0x0t
        0x0t
        0x10t
    .end array-data

    .line 72
    nop

    :array_3
    .array-data 0x1
        0x0t
        0x88t
        0x0t
        0x80t
    .end array-data

    .line 76
    :array_4
    .array-data 0x1
        0xa0t
        0xc0t
        0x0t
        0x0t
        0xct
    .end array-data

    .line 80
    nop

    :array_5
    .array-data 0x1
        0x0t
        0xc0t
        0x0t
        0x0t
        0xet
    .end array-data

    .line 91
    nop

    :array_6
    .array-data 0x1
        0x0t
        0xa4t
        0x8t
        0xct
        0x2t
        0x7ft
        0xfft
    .end array-data

    .line 95
    :array_7
    .array-data 0x1
        0x0t
        0x88t
        0x0t
        0x81t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mContext:Landroid/content/Context;

    .line 105
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mService:Lcom/android/internal/telephony/ITelephony;

    .line 107
    return-void
.end method

.method private getAkaValues([B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .locals 8
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 401
    array-length v3, p1

    if-gt v3, v4, :cond_0

    .line 402
    const/4 v3, 0x0

    .line 407
    :goto_0
    return-object v3

    .line 404
    :cond_0
    aget-byte v3, p1, v4

    and-int/lit16 v2, v3, 0xff

    .line 405
    .local v2, resLength:I
    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 406
    .local v0, cKLength:I
    add-int v3, v2, v0

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 407
    .local v1, iKLength:I
    new-instance v3, Lcom/sonyericsson/authentication/simcard/AkaResult;

    add-int/lit8 v4, v2, 0x3

    add-int v5, v0, v2

    add-int/lit8 v5, v5, 0x3

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    add-int v5, v2, v0

    add-int/lit8 v5, v5, 0x4

    add-int v6, v2, v0

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v1

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/4 v6, 0x2

    add-int/lit8 v7, v2, 0x2

    invoke-static {p1, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/authentication/simcard/AkaResult;-><init>([B[B[B)V

    goto :goto_0
.end method

.method private getGsmValues([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    .locals 8
    .parameter "response"

    .prologue
    const/4 v7, 0x0

    .line 381
    array-length v4, p1

    if-nez v4, :cond_0

    .line 382
    const/4 v4, 0x0

    .line 389
    :goto_0
    return-object v4

    .line 384
    :cond_0
    aget-byte v4, p1, v7

    and-int/lit16 v3, v4, 0xff

    .line 385
    .local v3, sresLength:I
    const/4 v4, 0x1

    add-int/lit8 v5, v3, 0x1

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 386
    .local v2, sres:[B
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v1, v4, 0xff

    .line 387
    .local v1, kcLength:I
    add-int/lit8 v4, v3, 0x2

    add-int v5, v3, v1

    add-int/lit8 v5, v5, 0x2

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 389
    .local v0, kc:[B
    new-instance v4, Lcom/sonyericsson/authentication/simcard/GsmResult;

    invoke-static {v0, v7}, Lcom/sonyericsson/authentication/simcard/Util;->byteArrayToLong([BI)J

    move-result-wide v5

    invoke-static {v2, v7}, Lcom/sonyericsson/authentication/simcard/Util;->byteArrayToInteger([BI)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sonyericsson/authentication/simcard/GsmResult;-><init>(JI)V

    goto :goto_0
.end method

.method private transmitAPDU([BI)[B
    .locals 20
    .parameter "command"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;
        }
    .end annotation

    .prologue
    .line 312
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v8, 0x4

    if-ge v1, v8, :cond_1

    .line 313
    const/16 v19, 0x0

    .line 369
    :cond_0
    return-object v19

    .line 315
    :cond_1
    const/16 v19, 0x0

    .line 316
    .local v19, result:[B
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xff

    .line 317
    .local v2, cla:I
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v3, v1, 0xff

    .line 318
    .local v3, ins:I
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v4, v1, 0xff

    .line 319
    .local v4, p1:I
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    .line 320
    .local v5, p2:I
    const/4 v6, -0x1

    .line 321
    .local v6, p3:I
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v8, 0x4

    if-le v1, v8, :cond_2

    .line 322
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v6, v1, 0xff

    .line 324
    :cond_2
    const/4 v7, 0x0

    .line 325
    .local v7, data:Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v8, 0x5

    if-le v1, v8, :cond_3

    .line 326
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/sonyericsson/authentication/simcard/Util;->byteArrayToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 329
    :cond_3
    and-int/lit8 v11, v2, 0x3

    .line 330
    .local v11, channelNumber:I
    const-string v18, ""

    .line 333
    .local v18, response:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_5

    .line 334
    if-nez v11, :cond_4

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 341
    :goto_0
    if-nez v18, :cond_6

    .line 342
    new-instance v1, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v8, "Transmit response null"

    invoke-direct {v1, v8}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :catch_0
    move-exception v17

    .line 352
    .local v17, re:Landroid/os/RemoteException;
    new-instance v1, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v8, "Remote Ex"

    invoke-direct {v1, v8}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    .end local v17           #re:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mService:Lcom/android/internal/telephony/ITelephony;

    move v9, v2

    move v10, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    invoke-interface/range {v8 .. v15}, Lcom/android/internal/telephony/ITelephony;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 346
    :cond_5
    new-instance v1, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v8, "Service not running"

    invoke-direct {v1, v8}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_6
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/authentication/simcard/Util;->numericStringToByteArray(Ljava/lang/String;)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    .line 354
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    array-length v1, v0

    const/4 v8, 0x2

    if-ge v1, v8, :cond_8

    .line 355
    :cond_7
    new-instance v1, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v8, "APDU response error"

    invoke-direct {v1, v8}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_8
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_9

    .line 359
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/authentication/simcard/Util;->checkStatus([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/authentication/simcard/Util;->checkErrorTypeForAka([B)Ljava/lang/String;

    move-result-object v16

    .line 361
    .local v16, error:Ljava/lang/String;
    new-instance v1, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    .end local v16           #error:Ljava/lang/String;
    :cond_9
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/authentication/simcard/Util;->checkStatus([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/authentication/simcard/Util;->checkErrorTypeForGsm([B)Ljava/lang/String;

    move-result-object v16

    .line 366
    .restart local v16       #error:Ljava/lang/String;
    new-instance v1, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .locals 22
    .parameter "rand"
    .parameter "autn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/SynchronisationFailureException;
        }
    .end annotation

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/authentication/simcard/Util;->checkPermission(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/authentication/simcard/Util;->isConnectionAllowed(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 224
    :cond_0
    new-instance v18, Ljava/lang/SecurityException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/SecurityException;-><init>()V

    throw v18

    .line 227
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mService:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 228
    new-instance v18, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v19, "Unable to start service"

    invoke-direct/range {v18 .. v19}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 231
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 232
    :cond_3
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Random/Autn : Invalid length"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 235
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v17

    .line 237
    .local v17, simcardType:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    sget-object v18, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    sget-object v18, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    sget-object v18, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 239
    :cond_5
    new-instance v18, Lcom/orange/authentication/simcard/SimNotReadyException;

    const-string v19, "Sim card not ready or absent"

    invoke-direct/range {v18 .. v19}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 242
    :cond_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int/lit8 v10, v18, 0x2

    .line 244
    .local v10, length:I
    sget-object v18, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->RUN_AKA_ALG_CMD_USIM:[B

    invoke-static {v10}, Lcom/sonyericsson/authentication/simcard/Util;->intToByteArray(I)[B

    move-result-object v19

    const/16 v20, 0x3

    const/16 v21, 0x4

    invoke-static/range {v19 .. v21}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/authentication/simcard/Util;->mergeArray([B[B)[B

    move-result-object v4

    .line 247
    .local v4, akaCmd:[B
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/authentication/simcard/Util;->intToByteArray(I)[B

    move-result-object v18

    const/16 v19, 0x3

    const/16 v20, 0x4

    invoke-static/range {v18 .. v20}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sonyericsson/authentication/simcard/Util;->mergeArray([B[B)[B

    move-result-object v11

    .line 250
    .local v11, randData:[B
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/authentication/simcard/Util;->intToByteArray(I)[B

    move-result-object v18

    const/16 v19, 0x3

    const/16 v20, 0x4

    invoke-static/range {v18 .. v20}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sonyericsson/authentication/simcard/Util;->mergeArray([B[B)[B

    move-result-object v5

    .line 253
    .local v5, autnData:[B
    invoke-static {v11, v5}, Lcom/sonyericsson/authentication/simcard/Util;->mergeArray([B[B)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/sonyericsson/authentication/simcard/Util;->mergeArray([B[B)[B

    move-result-object v16

    .line 256
    .local v16, runAkaAlgorithm:[B
    sget-object v18, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->SELECT_FILE_AKA_USIM:[B

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    move-result-object v13

    .line 258
    .local v13, respSelectFile:[B
    array-length v0, v13

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    aget-byte v18, v13, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0x90

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 259
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v9, v0, [B

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-byte v19, v9, v18

    const/16 v18, 0x1

    const/16 v19, -0x40

    aput-byte v19, v9, v18

    const/16 v18, 0x2

    const/16 v19, 0x0

    aput-byte v19, v9, v18

    const/16 v18, 0x3

    const/16 v19, 0x0

    aput-byte v19, v9, v18

    const/16 v18, 0x4

    array-length v0, v13

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-byte v19, v13, v19

    aput-byte v19, v9, v18

    .line 264
    .local v9, getResponse:[B
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    .line 267
    .end local v9           #getResponse:[B
    :cond_7
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    move-result-object v3

    .line 269
    .local v3, akaAlgorithm:[B
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v8, v0, [B

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-byte v19, v8, v18

    const/16 v18, 0x1

    const/16 v19, -0x40

    aput-byte v19, v8, v18

    const/16 v18, 0x2

    const/16 v19, 0x0

    aput-byte v19, v8, v18

    const/16 v18, 0x3

    const/16 v19, 0x0

    aput-byte v19, v8, v18

    const/16 v18, 0x4

    array-length v0, v3

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-byte v19, v3, v19

    aput-byte v19, v8, v18

    .line 273
    .local v8, getAkaResponse:[B
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    move-result-object v15

    .line 278
    .local v15, result:[B
    const/16 v18, 0x0

    array-length v0, v15

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 282
    .local v14, response:[B
    if-eqz v14, :cond_a

    .line 283
    const/16 v18, 0x0

    aget-byte v18, v14, v18

    move/from16 v0, v18

    and-int/lit16 v12, v0, 0xff

    .line 284
    .local v12, res:I
    const/16 v18, 0xdb

    move/from16 v0, v18

    if-ne v12, v0, :cond_8

    .line 285
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->getAkaValues([B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;

    move-result-object v18

    .line 298
    .end local v12           #res:I
    :goto_0
    return-object v18

    .line 286
    .restart local v12       #res:I
    :cond_8
    const/16 v18, 0xdc

    move/from16 v0, v18

    if-ne v12, v0, :cond_9

    .line 287
    const/16 v18, 0x1

    aget-byte v18, v14, v18

    move/from16 v0, v18

    and-int/lit16 v7, v0, 0xff

    .line 288
    .local v7, autsLength:I
    const/16 v18, 0x2

    add-int/lit8 v19, v7, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 292
    .local v6, auts:[B
    new-instance v18, Lcom/orange/authentication/simcard/SynchronisationFailureException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/orange/authentication/simcard/SynchronisationFailureException;-><init>([B)V

    throw v18

    .line 295
    .end local v6           #auts:[B
    .end local v7           #autsLength:I
    :cond_9
    new-instance v18, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    const-string v19, "Aka : Failure"

    invoke-direct/range {v18 .. v19}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 298
    .end local v12           #res:I
    :cond_a
    const/16 v18, 0x0

    goto :goto_0
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v4, p0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/authentication/simcard/Util;->isConnectionAllowed(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4}, Ljava/lang/SecurityException;-><init>()V

    throw v4

    .line 121
    :cond_0
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 123
    .local v2, simcardtype:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 125
    .local v3, simstate:I
    packed-switch v3, :pswitch_data_0

    .line 157
    :pswitch_0
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .end local v3           #simstate:I
    :goto_0
    move-object v4, v2

    .line 165
    :goto_1
    return-object v4

    .line 127
    .restart local v3       #simstate:I
    :pswitch_1
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 128
    goto :goto_0

    .line 130
    :pswitch_2
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 131
    goto :goto_0

    .line 133
    :pswitch_3
    const-string/jumbo v4, "ril.icctype"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, iccType:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 135
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_1

    .line 137
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, simType:I
    packed-switch v1, :pswitch_data_1

    .line 152
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 153
    goto :goto_0

    .line 140
    :pswitch_4
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 141
    goto :goto_0

    .line 143
    :pswitch_5
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 144
    goto :goto_0

    .line 146
    :pswitch_6
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 147
    goto :goto_0

    .line 149
    :pswitch_7
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 160
    .end local v0           #iccType:Ljava/lang/String;
    .end local v1           #simType:I
    .end local v3           #simstate:I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    .locals 16
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;
        }
    .end annotation

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sonyericsson/authentication/simcard/Util;->isConnectionAllowed(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 173
    new-instance v12, Ljava/lang/SecurityException;

    invoke-direct {v12}, Ljava/lang/SecurityException;-><init>()V

    throw v12

    .line 176
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->mService:Lcom/android/internal/telephony/ITelephony;

    if-nez v12, :cond_1

    .line 177
    new-instance v12, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v13, "Unable to start service"

    invoke-direct {v12, v13}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 179
    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    array-length v12, v0

    const/16 v13, 0x10

    if-eq v12, v13, :cond_3

    .line 180
    :cond_2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Random value : Invalid length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 182
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v10

    .line 184
    .local v10, simcardType:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    sget-object v12, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-eq v10, v12, :cond_4

    sget-object v12, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-eq v10, v12, :cond_4

    sget-object v12, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-ne v10, v12, :cond_5

    .line 186
    :cond_4
    new-instance v12, Lcom/orange/authentication/simcard/SimNotReadyException;

    const-string v13, "Simcard is absent else not ready"

    invoke-direct {v12, v13}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 188
    :cond_5
    const/4 v8, 0x0

    .line 189
    .local v8, runGsmAlg:[B
    sget-object v12, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-ne v10, v12, :cond_6

    .line 190
    sget-object v12, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->RUN_GSM_ALG_CMD_SIM:[B

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/sonyericsson/authentication/simcard/Util;->mergeArray([B[B)[B

    move-result-object v8

    .line 191
    sget-object v12, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->SELECT_FILE_SIM_GSM:[B

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    .line 192
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    .line 193
    sget-object v12, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->GET_GSM_RESP_SIM:[B

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    move-result-object v7

    .line 194
    .local v7, result:[B
    const/4 v12, 0x0

    array-length v13, v7

    add-int/lit8 v13, v13, -0x2

    invoke-static {v7, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 195
    .local v6, response:[B
    sget-object v12, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-ne v10, v12, :cond_8

    .line 196
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v6, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sonyericsson/authentication/simcard/Util;->byteArrayToInteger([BI)I

    move-result v11

    .line 198
    .local v11, sresVal:I
    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-static {v6, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sonyericsson/authentication/simcard/Util;->byteArrayToLong([BI)J

    move-result-wide v2

    .line 199
    .local v2, kcVal:J
    new-instance v12, Lcom/sonyericsson/authentication/simcard/GsmResult;

    invoke-direct {v12, v2, v3, v11}, Lcom/sonyericsson/authentication/simcard/GsmResult;-><init>(JI)V

    .line 216
    .end local v2           #kcVal:J
    .end local v11           #sresVal:I
    :goto_0
    return-object v12

    .line 201
    .end local v6           #response:[B
    .end local v7           #result:[B
    :cond_6
    sget-object v12, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-ne v10, v12, :cond_7

    .line 202
    move-object/from16 v0, p1

    array-length v12, v0

    add-int/lit8 v4, v12, 0x1

    .line 203
    .local v4, length:I
    sget-object v12, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->RUN_GSM_ALG_CMD_USIM:[B

    invoke-static {v4}, Lcom/sonyericsson/authentication/simcard/Util;->intToByteArray(I)[B

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x4

    invoke-static {v13, v14, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonyericsson/authentication/simcard/Util;->mergeArray([B[B)[B

    move-result-object v1

    .line 205
    .local v1, gsmCommandForUSIM:[B
    move-object/from16 v0, p1

    array-length v12, v0

    invoke-static {v12}, Lcom/sonyericsson/authentication/simcard/Util;->intToByteArray(I)[B

    move-result-object v12

    const/4 v13, 0x3

    const/4 v14, 0x4

    invoke-static {v12, v13, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/sonyericsson/authentication/simcard/Util;->mergeArray([B[B)[B

    move-result-object v5

    .line 207
    .local v5, randData:[B
    invoke-static {v1, v5}, Lcom/sonyericsson/authentication/simcard/Util;->mergeArray([B[B)[B

    move-result-object v9

    .line 208
    .local v9, runGsmAlgorithmCmd:[B
    sget-object v12, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->SELECT_FILE_USIM_GSM:[B

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    .line 209
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    .line 210
    sget-object v12, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->GET_GSM_RESP_USIM:[B

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->transmitAPDU([BI)[B

    move-result-object v7

    .line 211
    .restart local v7       #result:[B
    const/4 v12, 0x0

    array-length v13, v7

    add-int/lit8 v13, v13, -0x2

    invoke-static {v7, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 212
    .restart local v6       #response:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;->getGsmValues([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;

    move-result-object v12

    goto :goto_0

    .line 214
    .end local v1           #gsmCommandForUSIM:[B
    .end local v4           #length:I
    .end local v5           #randData:[B
    .end local v6           #response:[B
    .end local v7           #result:[B
    .end local v9           #runGsmAlgorithmCmd:[B
    :cond_7
    new-instance v12, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    const-string v13, "Only 2G and USIM are supported"

    invoke-direct {v12, v13}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 216
    .restart local v6       #response:[B
    .restart local v7       #result:[B
    :cond_8
    const/4 v12, 0x0

    goto :goto_0
.end method
