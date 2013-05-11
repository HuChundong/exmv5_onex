.class public Lcom/htc/opensense/plugin/PluginRegistryHelper;
.super Ljava/lang/Object;
.source "PluginRegistryHelper.java"

# interfaces
.implements Lcom/htc/opensense/plugin/PluginConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    }
.end annotation


# static fields
.field static final FEATURE_URI:Landroid/net/Uri; = null

.field private static final LOG_TAG:Ljava/lang/String; = null

.field static final METADATA_URI:Landroid/net/Uri; = null

.field public static final RAWQUERY:Landroid/net/Uri; = null

.field public static final URL_RAW_QUERY:Ljava/lang/String; = "rawquery"

.field private static sSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    .line 27
    :try_start_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    const-string v0, "content://com.htc.opensense.plugin/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.htc.opensense.plugin/features"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->FEATURE_URI:Landroid/net/Uri;

    .line 43
    const-string v0, "content://com.htc.opensense.plugin/meta_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/plugin/PluginRegistryHelper;->METADATA_URI:Landroid/net/Uri;

    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 302
    return-void
.end method

.method public static getFeatureClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "feature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 214
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->FEATURE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_2

    .line 216
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->FEATURE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "feature_type"

    aput-object v4, v2, v3

    const-string v3, "feature=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    :goto_0
    if-eqz v6, :cond_5

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 229
    if-eqz v6, :cond_0

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_0
    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 236
    :cond_1
    :goto_1
    return-object v1

    .line 219
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentProviderClient is null for uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/plugin/PluginRegistryHelper;->FEATURE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v7

    .line 227
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeatureClass() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    if-eqz v6, :cond_3

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_3
    if-eqz v0, :cond_4

    .line 233
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .end local v7           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    move-object v1, v8

    .line 236
    goto :goto_1

    .line 229
    :cond_5
    if-eqz v6, :cond_6

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_6
    if-eqz v0, :cond_4

    .line 233
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 229
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_7
    if-eqz v0, :cond_8

    .line 233
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    throw v1
.end method

.method public static getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    .locals 12
    .parameter "context"
    .parameter "accountType"
    .parameter "feature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 249
    const-string v2, "SELECT A2.%s,  A3.%s from %s A1, %s A2, %s A3 where A1.%s = \'%s\' AND A2.%s=A1.%s AND A2.%s=A3.%s AND A2.%s=\'%s\' %s"

    const/16 v1, 0xe

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "plugin_class"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "package"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "features"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "plugin"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "plugin_pkg"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "feature"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    aput-object p2, v4, v1

    const/4 v1, 0x7

    const-string v5, "feature_id"

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const-string v5, "_id"

    aput-object v5, v4, v1

    const/16 v1, 0x9

    const-string v5, "package_id"

    aput-object v5, v4, v1

    const/16 v1, 0xa

    const-string v5, "_id"

    aput-object v5, v4, v1

    const/16 v1, 0xb

    const-string v5, "plugin_meta"

    aput-object v5, v4, v1

    const/16 v1, 0xc

    aput-object p1, v4, v1

    const/16 v5, 0xd

    sget v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    const/high16 v11, 0x4000

    cmpg-float v1, v1, v11

    if-gez v1, :cond_2

    const-string v1, ""

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, sql:Ljava/lang/String;
    const-string v1, "PluginRegistryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 261
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_3

    .line 263
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 267
    :goto_1
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 268
    .local v8, dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_9

    .line 269
    new-instance v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;

    invoke-direct {v7}, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;-><init>()V

    .line 270
    .local v7, com:Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 271
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "package"

    invoke-static {v6, v2}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getValueInColumn(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "plugin_class"

    invoke-static {v6, v4}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getValueInColumn(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    .line 274
    iput-object p1, v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->accountType:Ljava/lang/String;

    .line 275
    const-string v1, "PluginRegistryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->cName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v1, "extra"

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;->extra:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    if-eqz v6, :cond_0

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_0
    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 296
    .end local v7           #com:Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    .end local v8           #dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_2
    return-object v7

    .line 249
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v3           #sql:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    const-string v1, "AND A2.removed=0"

    goto/16 :goto_0

    .line 265
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    .restart local v3       #sql:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentProviderClient is null for uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v9

    .line 287
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInfo() error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    if-eqz v6, :cond_4

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_4
    if-eqz v0, :cond_5

    .line 293
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .end local v9           #e:Ljava/lang/Exception;
    :cond_5
    :goto_3
    move-object v7, v10

    .line 296
    goto :goto_2

    .line 289
    .restart local v7       #com:Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    .restart local v8       #dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    if-eqz v6, :cond_7

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_7
    if-eqz v0, :cond_8

    .line 293
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    move-object v7, v10

    goto :goto_2

    .line 289
    .end local v7           #com:Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
    :cond_9
    if-eqz v6, :cond_a

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_a
    if-eqz v0, :cond_5

    .line 293
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    .line 289
    .end local v8           #dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_b

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_b
    if-eqz v0, :cond_c

    .line 293
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_c
    throw v1
.end method

.method public static getOpenSenseServices(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "context"
    .parameter "feature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 98
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 99
    .local v8, serviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "SELECT A2.%s FROM %s A1, %s A2 where A1.%s=\'%s\' AND A2.%s = A1.%s %s"

    const/16 v1, 0x8

    new-array v4, v1, [Ljava/lang/Object;

    const-string v1, "plugin_meta"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "features"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "plugin"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "feature"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    aput-object p1, v4, v1

    const/4 v1, 0x5

    const-string v5, "feature_id"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "_id"

    aput-object v5, v4, v1

    const/4 v5, 0x7

    sget v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    const/high16 v9, 0x4000

    cmpg-float v1, v1, v9

    if-gez v1, :cond_3

    const-string v1, ""

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, sql:Ljava/lang/String;
    const-string v1, "PluginRegistryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 109
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    :goto_1
    if-eqz v6, :cond_9

    .line 116
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 117
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 121
    :catch_0
    move-exception v7

    .line 122
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpenSenseServices() error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    if-eqz v6, :cond_0

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_0
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 131
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #serviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_4
    return-object v8

    .line 99
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v3           #sql:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v8       #serviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v1, "AND A2.removed=0"

    goto :goto_0

    .line 113
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    .restart local v3       #sql:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_4
    :try_start_2
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentProviderClient is null for uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_5
    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    throw v1

    .line 124
    :cond_7
    if-eqz v6, :cond_8

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_8
    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_4

    .line 124
    :cond_9
    if-eqz v6, :cond_a

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_a
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3
.end method

.method public static getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;
    .locals 13
    .parameter "context"
    .parameter "feature"

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 50
    const-string v2, "SELECT A1.%s, A2.%s FROM %s A1, %s A2 WHERE %s A1.%s IN (SELECT A2.%s FROM %s WHERE A2.%s IN (SELECT %s FROM %s WHERE %s=\'%s\'))"

    const/16 v1, 0xd

    new-array v4, v1, [Ljava/lang/Object;

    const-string v1, "package"

    aput-object v1, v4, v12

    const-string v1, "plugin_class"

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string v5, "plugin_pkg"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "plugin"

    aput-object v5, v4, v1

    const/4 v5, 0x4

    sget v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    const/high16 v11, 0x4000

    cmpg-float v1, v1, v11

    if-gez v1, :cond_0

    const-string v1, ""

    :goto_0
    aput-object v1, v4, v5

    const/4 v1, 0x5

    const-string v5, "_id"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "package_id"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    const-string v5, "plugin_pkg"

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const-string v5, "feature_id"

    aput-object v5, v4, v1

    const/16 v1, 0x9

    const-string v5, "_id"

    aput-object v5, v4, v1

    const/16 v1, 0xa

    const-string v5, "features"

    aput-object v5, v4, v1

    const/16 v1, 0xb

    const-string v5, "feature"

    aput-object v5, v4, v1

    const/16 v1, 0xc

    aput-object p1, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 60
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 62
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 68
    :goto_1
    if-eqz v6, :cond_7

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v7, v1, [Landroid/content/ComponentName;

    .line 70
    .local v7, components:[Landroid/content/ComponentName;
    const/4 v9, 0x0

    .local v9, i:I
    move v10, v9

    .line 71
    .end local v9           #i:I
    .local v10, i:I
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 72
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    new-instance v1, Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v7, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_2

    .line 50
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v3           #sql:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #components:[Landroid/content/ComponentName;
    .end local v10           #i:I
    :cond_0
    const-string v1, "A2.removed=0 AND"

    goto :goto_0

    .line 66
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    .restart local v3       #sql:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentProviderClient is null for uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v8

    .line 79
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPluginComponents() error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    if-eqz v6, :cond_2

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_2
    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 88
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    new-array v7, v12, [Landroid/content/ComponentName;

    :cond_4
    :goto_4
    return-object v7

    .line 81
    .restart local v7       #components:[Landroid/content/ComponentName;
    .restart local v10       #i:I
    :cond_5
    if-eqz v6, :cond_6

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_6
    if-eqz v0, :cond_4

    .line 85
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_4

    .line 81
    .end local v7           #components:[Landroid/content/ComponentName;
    .end local v10           #i:I
    :cond_7
    if-eqz v6, :cond_8

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_8
    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    .line 81
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_9

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_9
    if-eqz v0, :cond_a

    .line 85
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_a
    throw v1
.end method

.method public static getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;
    .locals 26
    .parameter "context"
    .parameter "feature"

    .prologue
    .line 138
    const-string v3, "SELECT t1.%s plugin_id, t2.%s, t3.%s feature_id, t3.%s feature_version, t3.%s, t3.%s, t1.%s, t1.%s, t1.%s, t1.%s FROM %s t1, %s t2, %s t3 WHERE t1.%s=t2.%s AND t1.%s=t3.%s AND t3.%s=\'%s\' %s"

    const/16 v2, 0x14

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "package"

    aput-object v6, v5, v2

    const/4 v2, 0x2

    const-string v6, "_id"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "version"

    aput-object v6, v5, v2

    const/4 v2, 0x4

    const-string v6, "feature"

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-string v6, "feature_type"

    aput-object v6, v5, v2

    const/4 v2, 0x6

    const-string v6, "version"

    aput-object v6, v5, v2

    const/4 v2, 0x7

    const-string v6, "plugin_class"

    aput-object v6, v5, v2

    const/16 v2, 0x8

    const-string v6, "description"

    aput-object v6, v5, v2

    const/16 v2, 0x9

    const-string v6, "plugin_meta"

    aput-object v6, v5, v2

    const/16 v2, 0xa

    const-string v6, "plugin"

    aput-object v6, v5, v2

    const/16 v2, 0xb

    const-string v6, "plugin_pkg"

    aput-object v6, v5, v2

    const/16 v2, 0xc

    const-string v6, "features"

    aput-object v6, v5, v2

    const/16 v2, 0xd

    const-string v6, "package_id"

    aput-object v6, v5, v2

    const/16 v2, 0xe

    const-string v6, "_id"

    aput-object v6, v5, v2

    const/16 v2, 0xf

    const-string v6, "feature_id"

    aput-object v6, v5, v2

    const/16 v2, 0x10

    const-string v6, "_id"

    aput-object v6, v5, v2

    const/16 v2, 0x11

    const-string v6, "feature"

    aput-object v6, v5, v2

    const/16 v2, 0x12

    aput-object p1, v5, v2

    const/16 v6, 0x13

    sget v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->sSenseVersion:F

    const/high16 v9, 0x4000

    cmpg-float v2, v2, v9

    if-gez v2, :cond_1

    const-string v2, ""

    :goto_0
    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, sql:Ljava/lang/String;
    const/4 v1, 0x0

    .line 150
    .local v1, client:Landroid/content/ContentProviderClient;
    const/4 v12, 0x0

    .line 152
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_2

    .line 154
    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 158
    :goto_1
    if-eqz v12, :cond_8

    .line 159
    const-string v2, "plugin_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 160
    .local v22, plugin_id:I
    const-string v2, "package"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 161
    .local v20, package_name:I
    const-string v2, "feature_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 162
    .local v15, feature_id:I
    const-string v2, "feature_version"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 163
    .local v18, feature_version:I
    const-string v2, "feature"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 164
    .local v16, feature_name:I
    const-string v2, "feature_type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 165
    .local v17, feature_type:I
    const-string v2, "version"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 166
    .local v24, plugin_version:I
    const-string v2, "plugin_class"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 167
    .local v21, plugin_class:I
    const-string v2, "description"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 168
    .local v13, description:I
    const-string v2, "plugin_meta"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 169
    .local v23, plugin_meta:I
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v0, v2, [Lcom/htc/opensense/plugin/Plugin;

    move-object/from16 v25, v0

    .line 170
    .local v25, plugins:[Lcom/htc/opensense/plugin/Plugin;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, i:I
    :goto_2
    if-ltz v19, :cond_6

    .line 171
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    new-instance v7, Lcom/htc/opensense/plugin/Feature;

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v2, v3, v5, v6}, Lcom/htc/opensense/plugin/Feature;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v7, f:Lcom/htc/opensense/plugin/Feature;
    new-instance v8, Landroid/content/ComponentName;

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v8, cname:Landroid/content/ComponentName;
    new-instance v5, Lcom/htc/opensense/plugin/Plugin;

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/htc/opensense/plugin/Plugin;-><init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v25, v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v7           #f:Lcom/htc/opensense/plugin/Feature;
    .end local v8           #cname:Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 138
    .end local v1           #client:Landroid/content/ContentProviderClient;
    .end local v4           #sql:Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #description:I
    .end local v15           #feature_id:I
    .end local v16           #feature_name:I
    .end local v17           #feature_type:I
    .end local v18           #feature_version:I
    .end local v19           #i:I
    .end local v20           #package_name:I
    .end local v21           #plugin_class:I
    .end local v22           #plugin_id:I
    .end local v23           #plugin_meta:I
    .end local v24           #plugin_version:I
    .end local v25           #plugins:[Lcom/htc/opensense/plugin/Plugin;
    :cond_1
    const-string v2, "AND t1.removed=0"

    goto/16 :goto_0

    .line 156
    .restart local v1       #client:Landroid/content/ContentProviderClient;
    .restart local v4       #sql:Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentProviderClient is null for uri: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 191
    :catch_0
    move-exception v14

    .line 192
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlugins() error: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    if-eqz v12, :cond_3

    .line 195
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_3
    if-eqz v1, :cond_4

    .line 198
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 201
    .end local v14           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/htc/opensense/plugin/Plugin;

    move-object/from16 v25, v0

    :cond_5
    :goto_4
    return-object v25

    .line 194
    .restart local v13       #description:I
    .restart local v15       #feature_id:I
    .restart local v16       #feature_name:I
    .restart local v17       #feature_type:I
    .restart local v18       #feature_version:I
    .restart local v19       #i:I
    .restart local v20       #package_name:I
    .restart local v21       #plugin_class:I
    .restart local v22       #plugin_id:I
    .restart local v23       #plugin_meta:I
    .restart local v24       #plugin_version:I
    .restart local v25       #plugins:[Lcom/htc/opensense/plugin/Plugin;
    :cond_6
    if-eqz v12, :cond_7

    .line 195
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_7
    if-eqz v1, :cond_5

    .line 198
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_4

    .line 194
    .end local v13           #description:I
    .end local v15           #feature_id:I
    .end local v16           #feature_name:I
    .end local v17           #feature_type:I
    .end local v18           #feature_version:I
    .end local v19           #i:I
    .end local v20           #package_name:I
    .end local v21           #plugin_class:I
    .end local v22           #plugin_id:I
    .end local v23           #plugin_meta:I
    .end local v24           #plugin_version:I
    .end local v25           #plugins:[Lcom/htc/opensense/plugin/Plugin;
    :cond_8
    if-eqz v12, :cond_9

    .line 195
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_9
    if-eqz v1, :cond_4

    .line 198
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    .line 194
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_a

    .line 195
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_a
    if-eqz v1, :cond_b

    .line 198
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_b
    throw v2
.end method

.method static getValueInColumn(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "c"
    .parameter "column"

    .prologue
    .line 364
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
