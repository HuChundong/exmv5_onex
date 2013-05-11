.class public Lcom/htc/album/SocialNetworkManager/DataPluginHelper;
.super Ljava/lang/Object;
.source "DataPluginHelper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DataPluginHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlbumListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 75
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, classes:[Ljava/lang/String;
    array-length v9, v1

    if-eq v9, v10, :cond_0

    move-object v4, v8

    .line 129
    :goto_0
    return-object v4

    .line 78
    :cond_0
    const/4 v4, 0x0

    .line 80
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    const/4 v7, 0x0

    .line 83
    .local v7, pkgContext:Landroid/content/Context;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v1, v9

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 94
    :goto_1
    if-nez v7, :cond_1

    move-object v4, v8

    goto :goto_0

    .line 87
    :catch_0
    move-exception v5

    .line 91
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][DataPluginHelper][createAlbumListDataPlugin]: 1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 97
    .local v6, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 100
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v1, v8

    invoke-virtual {v6, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 109
    :goto_2
    const/4 v3, 0x0

    .line 112
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    const/4 v8, 0x2

    :try_start_2
    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 121
    :goto_3
    const/4 v8, 0x2

    :try_start_3
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    move-object v4, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 102
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    :catch_1
    move-exception v5

    .line 106
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createAlbumListDataPlugin]: 2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 115
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/AlbumListPluginBase;>;"
    :catch_2
    move-exception v5

    .line 117
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createAlbumListDataPlugin]: 3: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 123
    .end local v5           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 125
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createAlbumListDataPlugin]: 4: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static createCommentViewDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/CommentViewPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 245
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 277
    :goto_0
    return-object v4

    .line 248
    :cond_0
    const/4 v4, 0x0

    .line 250
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/CommentViewPluginBase;
    const/4 v8, 0x0

    .line 252
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 259
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 255
    :catch_0
    move-exception v6

    .line 256
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 262
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 264
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/CommentViewPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 271
    :goto_2
    const/4 v9, 0x3

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 272
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/CommentViewPluginBase;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 265
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/CommentViewPluginBase;>;"
    :catch_1
    move-exception v6

    .line 266
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 273
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 274
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    const-string v10, "call constructor fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createFriendListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    .locals 13
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    .line 21
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, classes:[Ljava/lang/String;
    array-length v9, v1

    if-eq v9, v12, :cond_0

    .line 25
    const-string v9, "DataPluginHelper"

    const-string v10, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits classes"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 70
    :goto_0
    return-object v4

    .line 29
    :cond_0
    const/4 v4, 0x0

    .line 31
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    const/4 v7, 0x0

    .line 34
    .local v7, pkgContext:Landroid/content/Context;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v1, v9

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 43
    :goto_1
    if-nez v7, :cond_1

    move-object v4, v8

    goto :goto_0

    .line 38
    :catch_0
    move-exception v5

    .line 40
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits createPackageContext: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 45
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 46
    .local v6, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 48
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    const/4 v8, 0x1

    :try_start_1
    aget-object v8, v1, v8

    invoke-virtual {v6, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 53
    :goto_2
    const/4 v3, 0x0

    .line 56
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    const/4 v8, 0x2

    :try_start_2
    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 64
    :goto_3
    const/4 v8, 0x2

    :try_start_3
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    move-object v4, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 49
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    :catch_1
    move-exception v5

    .line 50
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits loadClass: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/FriendListPluginBase;>;"
    :catch_2
    move-exception v5

    .line 60
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits getConstructor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 66
    .end local v5           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 68
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v8, "DataPluginHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][DataPluginHelper][createFriendListDataPlugin]: exits newInstance: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static createFullPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 171
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 203
    :goto_0
    return-object v4

    .line 174
    :cond_0
    const/4 v4, 0x0

    .line 176
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;
    const/4 v8, 0x0

    .line 178
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 185
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 181
    :catch_0
    move-exception v6

    .line 182
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 188
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 190
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 197
    :goto_2
    const/4 v9, 0x3

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 198
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 191
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;>;"
    :catch_1
    move-exception v6

    .line 192
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 199
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 200
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    const-string v10, "call constructor fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createThumbPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 134
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 166
    :goto_0
    return-object v4

    .line 137
    :cond_0
    const/4 v4, 0x0

    .line 139
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    const/4 v8, 0x0

    .line 141
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 148
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 144
    :catch_0
    move-exception v6

    .line 145
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 151
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 153
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 160
    :goto_2
    const/4 v9, 0x3

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 161
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 154
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;>;"
    :catch_1
    move-exception v6

    .line 155
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 162
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 163
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "call constructor fail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createUploadEditorDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;
    .locals 12
    .parameter "context"
    .parameter "className"
    .parameter "uihandler"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 208
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, classes:[Ljava/lang/String;
    array-length v10, v1

    if-eq v10, v11, :cond_0

    move-object v4, v9

    .line 240
    :goto_0
    return-object v4

    .line 211
    :cond_0
    const/4 v4, 0x0

    .line 213
    .local v4, dataPlugin:Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;
    const/4 v8, 0x0

    .line 215
    .local v8, pkgContext:Landroid/content/Context;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v1, v10

    const/4 v11, 0x3

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 222
    :goto_1
    if-nez v8, :cond_1

    move-object v4, v9

    goto :goto_0

    .line 218
    :catch_0
    move-exception v6

    .line 219
    .local v6, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DataPluginHelper"

    const-string v11, "create package fail."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    .end local v6           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 225
    .local v7, loader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 227
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;>;"
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v1, v9

    invoke-virtual {v7, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 234
    :goto_2
    const/4 v9, 0x3

    :try_start_2
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/htc/opensense/album/plugin/IUIHandler;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 235
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;>;"
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 228
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;>;"
    :catch_1
    move-exception v6

    .line 229
    .local v6, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "DataPluginHelper"

    const-string v10, "load class fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 236
    .end local v6           #e1:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 237
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "DataPluginHelper"

    const-string v10, "call constructor fail."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
