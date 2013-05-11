.class public Lcom/htc/opensense/social/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/htc/opensense/plugin/PluginConstants;


# static fields
.field private static final FEATURE_FRIENDSTREAM_DATA_PLUGIN:Ljava/lang/String; = "FriendStreamDataPlugin"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final RAWQUERY:Landroid/net/Uri; = null

.field public static final URL_RAW_QUERY:Ljava/lang/String; = "rawquery"

.field private static sSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/opensense/social/PluginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/PluginManager;->LOG_TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/social/PluginManager;->sSenseVersion:F

    .line 26
    :try_start_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/htc/opensense/social/PluginManager;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    const-string v0, "content://com.htc.opensense.plugin/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

    return-void

    .line 27
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFriendStreamPluginComponentName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 11
    .parameter "context"
    .parameter "accountType"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 45
    const-string v2, "SELECT A1.%s, A2.%s FROM %s A1, %s A2 WHERE %s A1.%s IN (SELECT A2.%s FROM %s WHERE A2.%s IN (SELECT %s FROM %s WHERE %s=\'%s\')) AND A2.%s=%s"

    const/16 v1, 0xf

    new-array v4, v1, [Ljava/lang/Object;

    const-string v1, "package"

    aput-object v1, v4, v5

    const-string v1, "plugin_class"

    aput-object v1, v4, v10

    const/4 v1, 0x2

    const-string v5, "plugin_pkg"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "plugin"

    aput-object v5, v4, v1

    const/4 v5, 0x4

    sget v1, Lcom/htc/opensense/social/PluginManager;->sSenseVersion:F

    const/high16 v10, 0x4000

    cmpg-float v1, v1, v10

    if-gez v1, :cond_3

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

    const-string v5, "FriendStreamDataPlugin"

    aput-object v5, v4, v1

    const/16 v1, 0xd

    const-string v5, "plugin_meta"

    aput-object v5, v4, v1

    const/16 v1, 0xe

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 56
    .local v0, client:Landroid/content/ContentProviderClient;
    const/4 v6, 0x0

    .line 57
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 59
    .local v7, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    sget-object v1, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 65
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v8, Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #componentName:Landroid/content/ComponentName;
    .local v8, componentName:Landroid/content/ComponentName;
    move-object v7, v8

    .line 71
    .end local v8           #componentName:Landroid/content/ComponentName;
    .restart local v7       #componentName:Landroid/content/ComponentName;
    :cond_0
    if-eqz v6, :cond_1

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    .line 75
    :goto_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 78
    :cond_2
    return-object v7

    .line 45
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v3           #sql:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #componentName:Landroid/content/ComponentName;
    :cond_3
    const-string v1, "A2.removed=0 AND"

    goto :goto_0

    .line 63
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    .restart local v3       #sql:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #componentName:Landroid/content/ComponentName;
    :cond_4
    :try_start_1
    sget-object v1, Lcom/htc/opensense/social/PluginManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentProviderClient is null for uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

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

    .line 68
    :catch_0
    move-exception v9

    .line 69
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/htc/opensense/social/PluginManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFriendStreamPluginComponentName() error: "

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

    .line 71
    if-eqz v6, :cond_5

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_5
    if-eqz v0, :cond_2

    goto :goto_2

    .line 71
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_6
    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 71
    :cond_7
    throw v1
.end method

.method public static getFriendStreamPluginTypes(Landroid/content/Context;)[Lcom/htc/opensense/social/PluginDescription;
    .locals 22
    .parameter "context"

    .prologue
    .line 82
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    .line 83
    .local v11, am:Landroid/accounts/AccountManager;
    invoke-virtual {v11}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v10

    .line 84
    .local v10, ads:[Landroid/accounts/AuthenticatorDescription;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v13, authenticatorDescriptions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;>;"
    move-object v12, v10

    .local v12, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v0, v12

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v9, v12, v16

    .line 86
    .local v9, ad:Landroid/accounts/AuthenticatorDescription;
    iget-object v3, v9, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v13, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 88
    .end local v9           #ad:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v20, pluginDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/PluginDescription;>;"
    const-string v4, "SELECT t1.%s plugin_id, t2.%s, t3.%s feature_id, t3.%s feature_version, t3.%s, t3.%s, t1.%s, t1.%s, t1.%s, t1.%s FROM %s t1, %s t2, %s t3 WHERE t1.%s=t2.%s AND t1.%s=t3.%s AND t3.%s=\'%s\' %s"

    const/16 v3, 0x14

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "package"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-string v7, "_id"

    aput-object v7, v6, v3

    const/4 v3, 0x3

    const-string v7, "version"

    aput-object v7, v6, v3

    const/4 v3, 0x4

    const-string v7, "feature"

    aput-object v7, v6, v3

    const/4 v3, 0x5

    const-string v7, "feature_type"

    aput-object v7, v6, v3

    const/4 v3, 0x6

    const-string v7, "version"

    aput-object v7, v6, v3

    const/4 v3, 0x7

    const-string v7, "plugin_class"

    aput-object v7, v6, v3

    const/16 v3, 0x8

    const-string v7, "description"

    aput-object v7, v6, v3

    const/16 v3, 0x9

    const-string v7, "plugin_meta"

    aput-object v7, v6, v3

    const/16 v3, 0xa

    const-string v7, "plugin"

    aput-object v7, v6, v3

    const/16 v3, 0xb

    const-string v7, "plugin_pkg"

    aput-object v7, v6, v3

    const/16 v3, 0xc

    const-string v7, "features"

    aput-object v7, v6, v3

    const/16 v3, 0xd

    const-string v7, "package_id"

    aput-object v7, v6, v3

    const/16 v3, 0xe

    const-string v7, "_id"

    aput-object v7, v6, v3

    const/16 v3, 0xf

    const-string v7, "feature_id"

    aput-object v7, v6, v3

    const/16 v3, 0x10

    const-string v7, "_id"

    aput-object v7, v6, v3

    const/16 v3, 0x11

    const-string v7, "feature"

    aput-object v7, v6, v3

    const/16 v3, 0x12

    const-string v7, "FriendStreamDataPlugin"

    aput-object v7, v6, v3

    const/16 v7, 0x13

    sget v3, Lcom/htc/opensense/social/PluginManager;->sSenseVersion:F

    const/high16 v21, 0x4000

    cmpg-float v3, v3, v21

    if-gez v3, :cond_6

    const-string v3, ""

    :goto_1
    aput-object v3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, sql:Ljava/lang/String;
    const/4 v2, 0x0

    .line 103
    .local v2, client:Landroid/content/ContentProviderClient;
    const/4 v14, 0x0

    .line 105
    .local v14, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_7

    .line 107
    sget-object v3, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 111
    :goto_2
    if-eqz v14, :cond_3

    .line 112
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    :cond_1
    const-string v3, "plugin_meta"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, accountType:Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/accounts/AuthenticatorDescription;

    .line 117
    .restart local v9       #ad:Landroid/accounts/AuthenticatorDescription;
    const-string v3, "package"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 118
    .local v18, packageName:Ljava/lang/String;
    new-instance v19, Lcom/htc/opensense/social/PluginDescription;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1, v9}, Lcom/htc/opensense/social/PluginDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)V

    .line 119
    .local v19, pd:Lcom/htc/opensense/social/PluginDescription;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v9           #ad:Landroid/accounts/AuthenticatorDescription;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #pd:Lcom/htc/opensense/social/PluginDescription;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 127
    .end local v8           #accountType:Ljava/lang/String;
    :cond_3
    if-eqz v14, :cond_4

    .line 128
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_4
    if-eqz v2, :cond_5

    .line 131
    :goto_3
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 135
    :cond_5
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/htc/opensense/social/PluginDescription;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/opensense/social/PluginDescription;

    return-object v3

    .line 90
    .end local v2           #client:Landroid/content/ContentProviderClient;
    .end local v5           #sql:Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    :cond_6
    const-string v3, "AND t1.removed=0"

    goto :goto_1

    .line 109
    .restart local v2       #client:Landroid/content/ContentProviderClient;
    .restart local v5       #sql:Ljava/lang/String;
    .restart local v14       #c:Landroid/database/Cursor;
    :cond_7
    :try_start_1
    sget-object v3, Lcom/htc/opensense/social/PluginManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentProviderClient is null for uri: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 124
    :catch_0
    move-exception v15

    .line 125
    .local v15, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/opensense/social/PluginManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFriendStreamPluginTypes() error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    if-eqz v14, :cond_8

    .line 128
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_8
    if-eqz v2, :cond_5

    goto :goto_3

    .line 127
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_9

    .line 128
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_9
    if-eqz v2, :cond_a

    .line 131
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 127
    :cond_a
    throw v3
.end method
