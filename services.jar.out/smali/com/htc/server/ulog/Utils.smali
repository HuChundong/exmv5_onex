.class final Lcom/htc/server/ulog/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final DROPBOX_ULOGDATA_TAG:Ljava/lang/String; = "HTC_ULOGDATA"

#the value of this static final field might be set in the static constructor
.field static final ENABLE_USER_POLICY:Z = false

#the value of this static final field might be set in the static constructor
.field static final ENABLE_USER_PROFILING:Z = false

#the value of this static final field might be set in the static constructor
.field static final IS_DEBUG:Z = false

.field static SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter; = null

.field static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"

.field static final UB_TAG:Ljava/lang/String; = "HTC_UB"

.field static final UP_TAG:Ljava/lang/String; = "HTC_UP"

.field private static final charForDigit:[C

.field private static final sExtraInfoBuffer:Ljava/lang/StringBuilder;

.field private static final sJSONObj:Lorg/json/JSONObject;

.field private static sLock:Ljava/lang/Object;

.field private static final sLogBuffer:Ljava/lang/StringBuilder;

.field private static sS3LogBuilder:Ljava/lang/StringBuilder;

.field private static final sTimeBuffer:Ljava/lang/StringBuilder;

.field private static final sTimeSuncLock:Ljava/lang/Object;

.field private static final sTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x40

    .line 38
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserProfiling()Z

    move-result v0

    sput-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_PROFILING:Z

    .line 39
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserPolicy()Z

    move-result v0

    sput-boolean v0, Lcom/htc/server/ulog/Utils;->ENABLE_USER_POLICY:Z

    .line 40
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/ulog/Utils;->IS_DEBUG:Z

    .line 44
    new-instance v0, Lcom/htc/server/ulog/Utils$1;

    invoke-direct {v0}, Lcom/htc/server/ulog/Utils$1;-><init>()V

    sput-object v0, Lcom/htc/server/ulog/Utils;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/server/ulog/Utils;->sLock:Ljava/lang/Object;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/htc/server/ulog/Utils;->sLogBuffer:Ljava/lang/StringBuilder;

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/htc/server/ulog/Utils;->sJSONObj:Lorg/json/JSONObject;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/htc/server/ulog/Utils;->sS3LogBuilder:Ljava/lang/StringBuilder;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    .line 283
    const-string v0, "Asia/Taipei"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/htc/server/ulog/Utils;->sTimeZone:Ljava/util/TimeZone;

    .line 284
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/server/ulog/Utils;->sTimeSuncLock:Ljava/lang/Object;

    .line 308
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/htc/server/ulog/Utils;->sExtraInfoBuffer:Ljava/lang/StringBuilder;

    return-void

    .line 308
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ULogDataToS3Log(Lcom/htc/utils/ulog/ULogData;)Ljava/lang/String;
    .locals 23
    .parameter "ulogdata"

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 199
    const-string v12, ""

    .line 263
    :goto_0
    return-object v12

    .line 201
    :cond_0
    const/4 v12, 0x0

    .line 202
    .local v12, log:Ljava/lang/String;
    sget-object v20, Lcom/htc/server/ulog/Utils;->sLock:Ljava/lang/Object;

    monitor-enter v20

    .line 203
    const/4 v7, 0x0

    .line 204
    .local v7, itemLength:I
    :try_start_0
    const-string v10, ""

    .local v10, key:Ljava/lang/String;
    const-string v18, ""

    .line 206
    .local v18, value:Ljava/lang/String;
    sget-object v19, Lcom/htc/server/ulog/Utils;->sLogBuffer:Ljava/lang/StringBuilder;

    const/16 v21, 0x0

    sget-object v22, Lcom/htc/server/ulog/Utils;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->capacity()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 207
    sget-object v19, Lcom/htc/server/ulog/Utils;->sJSONObj:Lorg/json/JSONObject;

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 208
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 209
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 210
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 262
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10           #key:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 216
    .restart local v8       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10       #key:Ljava/lang/String;
    .restart local v18       #value:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, appId:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v17

    .line 219
    .local v17, tagS:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/htc/utils/ulog/ULogData;->getTimestamp()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 221
    .local v14, now:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v13

    .line 222
    .local v13, logItem:Lcom/htc/utils/ulog/ULogData$ULogItem;
    if-eqz v13, :cond_4

    .line 223
    invoke-interface {v13}, Lcom/htc/utils/ulog/ULogData$ULogItem;->getEntrySet()Ljava/util/Set;

    move-result-object v16

    .line 224
    .local v16, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 225
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #key:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 226
    .restart local v10       #key:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 227
    .local v15, obj:Ljava/lang/Object;
    instance-of v0, v15, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 228
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_3
    if-eqz v10, :cond_2

    if-eqz v18, :cond_2

    .line 231
    :try_start_2
    sget-object v19, Lcom/htc/server/ulog/Utils;->sJSONObj:Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 232
    :catch_0
    move-exception v4

    .line 233
    .local v4, e:Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 239
    .end local v4           #e:Lorg/json/JSONException;
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v16           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    sget-object v19, Lcom/htc/server/ulog/Utils;->sJSONObj:Lorg/json/JSONObject;

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->length()I

    move-result v7

    .line 240
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int v19, v19, v21

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    add-int v19, v19, v21

    add-int v19, v19, v7

    add-int/lit8 v11, v19, 0x4

    .line 241
    .local v11, length:I
    sget-object v19, Lcom/htc/server/ulog/Utils;->sLogBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 244
    sget-object v19, Lcom/htc/server/ulog/Utils;->sLogBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v21, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v21, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v21, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    sget-object v19, Lcom/htc/server/ulog/Utils;->sJSONObj:Lorg/json/JSONObject;

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 248
    const-string v9, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    .local v9, jsonString:Ljava/lang/String;
    :try_start_4
    sget-object v19, Lcom/htc/server/ulog/Utils;->sJSONObj:Lorg/json/JSONObject;

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v9

    .line 256
    :goto_3
    :try_start_5
    sget-object v19, Lcom/htc/server/ulog/Utils;->sLogBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    sget-object v19, Lcom/htc/server/ulog/Utils;->sLogBuffer:Ljava/lang/StringBuilder;

    const/16 v21, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .end local v9           #jsonString:Ljava/lang/String;
    :cond_5
    sget-object v19, Lcom/htc/server/ulog/Utils;->sLogBuffer:Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 262
    monitor-exit v20

    goto/16 :goto_0

    .line 252
    .restart local v9       #jsonString:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 253
    .local v4, e:Ljava/lang/Exception;
    const-string v19, "UserBehaviorLoggingService"

    const-string v21, "[JsonToString]Error occured! "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method static addExtraInformation(Landroid/content/Context;Ljava/io/FileWriter;)V
    .locals 19
    .parameter "ctx"
    .parameter "fw"

    .prologue
    .line 332
    sget-object v16, Lcom/htc/server/ulog/Utils;->sExtraInfoBuffer:Ljava/lang/StringBuilder;

    monitor-enter v16

    .line 333
    :try_start_0
    sget-object v13, Lcom/htc/server/ulog/Utils;->sExtraInfoBuffer:Ljava/lang/StringBuilder;

    .line 334
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->capacity()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v3

    .line 336
    .local v3, accountMgr:Landroid/accounts/AccountManagerService;
    if-eqz v3, :cond_3

    .line 337
    const-string v15, "com.htc.android.mail.eas"

    invoke-virtual {v3, v15}, Landroid/accounts/AccountManagerService;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 338
    .local v4, accounts:[Landroid/accounts/Account;
    if-eqz v4, :cond_1

    .line 339
    move-object v5, v4

    .local v5, arr$:[Landroid/accounts/Account;
    array-length v11, v5

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v2, v5, v10

    .line 340
    .local v2, account:Landroid/accounts/Account;
    if-eqz v2, :cond_0

    .line 341
    const-string v15, "Account: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 344
    .end local v2           #account:Landroid/accounts/Account;
    .end local v5           #arr$:[Landroid/accounts/Account;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_1
    const-string v15, "com.google"

    invoke-virtual {v3, v15}, Landroid/accounts/AccountManagerService;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 345
    if-eqz v4, :cond_3

    .line 346
    move-object v5, v4

    .restart local v5       #arr$:[Landroid/accounts/Account;
    array-length v11, v5

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_1
    if-ge v10, v11, :cond_3

    aget-object v2, v5, v10

    .line 347
    .restart local v2       #account:Landroid/accounts/Account;
    if-eqz v2, :cond_2

    .line 348
    const-string v15, "Account: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 353
    .end local v2           #account:Landroid/accounts/Account;
    .end local v4           #accounts:[Landroid/accounts/Account;
    .end local v5           #arr$:[Landroid/accounts/Account;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "htc_error_report_auto_send"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    const/4 v6, 0x1

    .line 354
    .local v6, autosend:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "htc_error_report_setting"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    const/4 v14, 0x1

    .line 355
    .local v14, showTellHtcSetting:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "send_htc_error_report"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    const/4 v8, 0x1

    .line 356
    .local v8, enableErrorReport:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "send_htc_application_log"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    const/4 v9, 0x1

    .line 357
    .local v9, enableUserProfiling:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "htc_error_report_prefer_network"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 359
    .local v12, preferredNetwork:I
    const-string v15, "ForceDisableULog: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/htc/server/ulog/Utils;->getForceDisableULog()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v15, "Autosend: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v15, "ShowTellHtcSetting: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v15, "EnableErrorReport: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v15, "EnableUserProfiling: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v15, "PreferredNetwork: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "\n\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    if-eqz p1, :cond_4

    .line 368
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :cond_4
    :goto_6
    :try_start_2
    monitor-exit v16

    .line 374
    return-void

    .line 353
    .end local v6           #autosend:Z
    .end local v8           #enableErrorReport:Z
    .end local v9           #enableUserProfiling:Z
    .end local v12           #preferredNetwork:I
    .end local v14           #showTellHtcSetting:Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 354
    .restart local v6       #autosend:Z
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 355
    .restart local v14       #showTellHtcSetting:Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 356
    .restart local v8       #enableErrorReport:Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 369
    .restart local v9       #enableUserProfiling:Z
    .restart local v12       #preferredNetwork:I
    :catch_0
    move-exception v7

    .line 370
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 373
    .end local v3           #accountMgr:Landroid/accounts/AccountManagerService;
    .end local v6           #autosend:Z
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #enableErrorReport:Z
    .end local v9           #enableUserProfiling:Z
    .end local v12           #preferredNetwork:I
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v14           #showTellHtcSetting:Z
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15
.end method

.method private static append(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter "buffer"
    .parameter "i"

    .prologue
    .line 313
    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    .line 314
    sget-object v1, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    aget-char v1, v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_2

    .line 316
    sget-object v1, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    div-int/lit8 v2, p1, 0xa

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    rem-int/lit8 v3, p1, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 317
    :cond_2
    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_3

    .line 318
    sget-object v1, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    div-int/lit8 v2, p1, 0x64

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    rem-int/lit8 v0, p1, 0x64

    .local v0, c:I
    div-int/lit8 v3, v0, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    rem-int/lit8 v3, v0, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 319
    .end local v0           #c:I
    :cond_3
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_0

    .line 320
    sget-object v1, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    div-int/lit16 v2, p1, 0x3e8

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    rem-int/lit16 v0, p1, 0x3e8

    .restart local v0       #c:I
    div-int/lit8 v3, v0, 0x64

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    rem-int/lit8 v0, v0, 0x64

    div-int/lit8 v3, v0, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/server/ulog/Utils;->charForDigit:[C

    rem-int/lit8 v3, v0, 0xa

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getForceDisableULog()Z
    .locals 2

    .prologue
    .line 377
    const-string v0, "profiler.force_disable_ulog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getFormattedDateTimeOfTaipei(J)Ljava/lang/String;
    .locals 5
    .parameter "time"

    .prologue
    .line 286
    sget-object v2, Lcom/htc/server/ulog/Utils;->sTimeSuncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 287
    :try_start_0
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeZone:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 288
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 289
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/16 v4, 0x18

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 290
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/server/ulog/Utils;->append(Ljava/lang/StringBuilder;I)V

    .line 291
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/htc/server/ulog/Utils;->append(Ljava/lang/StringBuilder;I)V

    .line 293
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/server/ulog/Utils;->append(Ljava/lang/StringBuilder;I)V

    .line 295
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/server/ulog/Utils;->append(Ljava/lang/StringBuilder;I)V

    .line 297
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/server/ulog/Utils;->append(Ljava/lang/StringBuilder;I)V

    .line 299
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/server/ulog/Utils;->append(Ljava/lang/StringBuilder;I)V

    .line 301
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/server/ulog/Utils;->append(Ljava/lang/StringBuilder;I)V

    .line 304
    sget-object v1, Lcom/htc/server/ulog/Utils;->sTimeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 305
    .end local v0           #calendar:Ljava/util/Calendar;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getTellHtcPreferredNetworkSetting(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_error_report_prefer_network"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static is3GNetwork()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 80
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 82
    .local v0, cm:Landroid/net/IConnectivityManager;
    if-eqz v0, :cond_0

    .line 83
    const/4 v2, 0x0

    .line 85
    .local v2, mobile:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 91
    .end local v2           #mobile:Landroid/net/NetworkInfo;
    :cond_0
    return v3

    .line 86
    .restart local v2       #mobile:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static isEnginneringROM()Z
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isErrorReportSettingEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "send_htc_error_report"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static isLessThanSense35()Z
    .locals 2

    .prologue
    .line 107
    const-string v0, "2.1"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2.0"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1.6"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "none"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3.0"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLessThanSense40()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/htc/server/ulog/Utils;->isSense35()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/server/ulog/Utils;->isLessThanSense35()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLessThanSense45()Z
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/htc/server/ulog/Utils;->isSense40()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/server/ulog/Utils;->isLessThanSense40()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSense35()Z
    .locals 2

    .prologue
    .line 116
    const-string v0, "3.5"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isSense40()Z
    .locals 2

    .prologue
    .line 120
    const-string v0, "4.0"

    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isSenseDotComEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tellhtc_enable_sense_dot_com_log"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static isTellHTCSettingShown(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_error_report_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static isTellHtcEnableAutoSend(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_error_report_auto_send"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static isUserProfilingSettingEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "send_htc_application_log"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static logD(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 101
    sget-boolean v0, Lcom/htc/server/ulog/Utils;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "UserBehaviorLoggingService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 95
    sget-boolean v0, Lcom/htc/server/ulog/Utils;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return-void
.end method

.method static toBytes(Ljava/util/List;)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/utils/ulog/ULogData;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/utils/ulog/ULogData;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v5, 0x2

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 140
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 141
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 143
    .local v1, buffer:[B
    :try_start_0
    invoke-static {v2, p0}, Lcom/htc/utils/ulog/SerializableUtil$Writer;->write(Ljava/io/DataOutputStream;Ljava/util/List;)V

    .line 144
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 145
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 146
    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_1
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v3

    .line 151
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 153
    if-eqz v2, :cond_2

    .line 154
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 155
    :cond_2
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 157
    :catch_1
    move-exception v4

    .line 158
    .local v4, e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static toBytesEx(Ljava/util/List;)[B
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/utils/ulog/ULogData;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/utils/ulog/ULogData;>;"
    const/4 v1, 0x0

    .line 172
    .local v1, buffer:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v5, 0x2

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 173
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 174
    .local v3, logOS:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 176
    .local v4, succeedToOutput:Z
    const/4 v5, 0x1

    :try_start_0
    sget-object v6, Lcom/htc/server/ulog/Utils;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v0, v5, v6}, Lcom/htc/utils/ulog/io/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;

    move-result-object v3

    .line 177
    invoke-static {v3, p0}, Lcom/htc/utils/ulog/SerializableUtil$Writer;->writeEx(Ljava/io/OutputStream;Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 182
    if-eqz v3, :cond_0

    .line 183
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 189
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 191
    :cond_1
    return-object v1

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    if-eqz v3, :cond_0

    .line 183
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 184
    :catch_1
    move-exception v2

    .line 185
    .local v2, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 182
    if-eqz v3, :cond_2

    .line 183
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 181
    :cond_2
    :goto_2
    throw v5

    .line 184
    :catch_2
    move-exception v2

    .line 185
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 184
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method static toS3Log(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/utils/ulog/ULogData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/utils/ulog/ULogData;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 269
    sget-object v3, Lcom/htc/server/ulog/Utils;->sS3LogBuilder:Ljava/lang/StringBuilder;

    monitor-enter v3

    .line 270
    :try_start_0
    sget-object v2, Lcom/htc/server/ulog/Utils;->sS3LogBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/server/ulog/Utils;->sS3LogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->capacity()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 272
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/utils/ulog/ULogData;

    .line 273
    .local v0, data:Lcom/htc/utils/ulog/ULogData;
    sget-object v2, Lcom/htc/server/ulog/Utils;->sS3LogBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->ULogDataToS3Log(Lcom/htc/utils/ulog/ULogData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    .end local v0           #data:Lcom/htc/utils/ulog/ULogData;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 276
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/htc/server/ulog/Utils;->sS3LogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method
