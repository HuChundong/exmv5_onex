.class public Lcom/htc/album/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final ALBUM_ID_RECENT_UPLOAD:Ljava/lang/String; = "com.htc.album.recent_photos"

.field private static final LOG_TAG:Ljava/lang/String; = "MainActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 28
    const-string v25, "MainActivity"

    const-string v26, "[HTCAlbum][MainActivity][onCreate]: Begin"

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 35
    .local v7, intent:Landroid/content/Intent;
    const-string v25, "live_album"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 36
    .local v5, bIsLiveAlbum:Z
    const-string v25, "from_kddi"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 38
    .local v4, bIsFromKDDI:Z
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_3

    .line 40
    const-string v25, "MainActivity"

    const-string v26, "[HTCAlbum][MainActivity][onCreate]: Live Album List: "

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v25, "service_name"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 42
    .local v18, szService:Ljava/lang/String;
    const-string v25, "user_id"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 43
    .local v20, szUserId:Ljava/lang/String;
    const-string v25, "user_name"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 44
    .local v21, szUserName:Ljava/lang/String;
    const-string v25, "user_buddyicon"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 45
    .local v19, szUserIcon:Ljava/lang/String;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v24, userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v25, "MainActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[HTCAlbum][MainActivity][onCreate]: Service: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v25, "MainActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[HTCAlbum][MainActivity][onCreate]: user Id: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-nez v18, :cond_0

    .line 53
    const-string v25, "MainActivity"

    const-string v26, "[HTCAlbum][MainActivity][onCreate]: no service... "

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v18           #szService:Ljava/lang/String;
    .end local v19           #szUserIcon:Ljava/lang/String;
    .end local v20           #szUserId:Ljava/lang/String;
    .end local v21           #szUserName:Ljava/lang/String;
    .end local v24           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 56
    .restart local v18       #szService:Ljava/lang/String;
    .restart local v19       #szUserIcon:Ljava/lang/String;
    .restart local v20       #szUserId:Ljava/lang/String;
    .restart local v21       #szUserName:Ljava/lang/String;
    .restart local v24       #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 58
    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    :goto_1
    const-string v25, "service_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v25, "user_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v25, "user_buddyicon"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v25, "from_outside"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v25, "flag_genuine"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v25, "from_tabhost"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string v25, "recent_list"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const-string v25, "online_scene"

    const-string v26, "SceneOnlineFolder"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v25, "listviewPos"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v25, "fromMainActivity"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    .end local v18           #szService:Ljava/lang/String;
    .end local v19           #szUserIcon:Ljava/lang/String;
    .end local v20           #szUserId:Ljava/lang/String;
    .end local v21           #szUserName:Ljava/lang/String;
    .end local v24           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    const/high16 v25, 0x400

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/album/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/MainActivity;->finish()V

    .line 185
    const-string v25, "MainActivity"

    const-string v26, "[HTCAlbum][MainActivity][onCreate]: End"

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    .restart local v18       #szService:Ljava/lang/String;
    .restart local v19       #szUserIcon:Ljava/lang/String;
    .restart local v20       #szUserId:Ljava/lang/String;
    .restart local v21       #szUserName:Ljava/lang/String;
    .restart local v24       #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 62
    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 66
    :cond_2
    const-string v25, "MainActivity"

    const-string v26, "[HTCAlbum][MainActivity][onCreate]: not supported... "

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    .end local v18           #szService:Ljava/lang/String;
    .end local v19           #szUserIcon:Ljava/lang/String;
    .end local v20           #szUserId:Ljava/lang/String;
    .end local v21           #szUserName:Ljava/lang/String;
    .end local v24           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v25, "itemId"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_b

    .line 88
    const-string v25, "MainActivity"

    const-string v26, "[HTCAlbum][MainActivity][onCreate]: Live Photo List: "

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v25, "servicetype"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 90
    .restart local v18       #szService:Ljava/lang/String;
    const-string v25, "itemId"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 91
    .restart local v20       #szUserId:Ljava/lang/String;
    const-string v25, "albumName"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, szAlbumName:Ljava/lang/String;
    const-string v25, "albumId"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 93
    .local v15, szAlbumId:Ljava/lang/String;
    const-string v25, "mediumId"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 95
    .local v17, szMediumId:Ljava/lang/String;
    const-string v25, "MainActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[HTCAlbum][MainActivity][onCreate]: Service: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v25, "MainActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[HTCAlbum][MainActivity][onCreate]: Album Id: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v25, "MainActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[HTCAlbum][MainActivity][onCreate]: AlbumName: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v25, "MainActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[HTCAlbum][MainActivity][onCreate]: Medium Id: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez v18, :cond_4

    .line 102
    const-string v25, "MainActivity"

    const-string v26, "[HTCAlbum][MainActivity][onCreate]: no service... "

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_4
    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    sget-object v25, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 108
    :cond_5
    const-string v25, "opensense_pugin"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    :goto_3
    const-string v25, "service_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v25, "user_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v25, "com.htc.album.recent_photos"

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 120
    const-string v25, "album_name"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x20401f1

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 121
    const-string v25, "album_id"

    const-string v26, ".ruplist"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :goto_4
    const-string v25, "photo_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v25, "from_outside"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    const-string v25, "flag_genuine"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_a

    .line 140
    :cond_6
    const-string v25, "online_scene"

    const-string v26, "SceneOnlinePhotoThumbnail"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 112
    :cond_7
    const-string v25, "opensense_pugin"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 125
    :cond_8
    if-nez v16, :cond_9

    .line 126
    const-string v25, "album_name"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    :goto_6
    const-string v25, "album_id"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 128
    :cond_9
    const-string v25, "album_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 142
    :cond_a
    const-string v25, "online_scene"

    const-string v26, "SceneOnlinePhotoFullscreen"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 145
    .end local v15           #szAlbumId:Ljava/lang/String;
    .end local v16           #szAlbumName:Ljava/lang/String;
    .end local v17           #szMediumId:Ljava/lang/String;
    .end local v18           #szService:Ljava/lang/String;
    .end local v20           #szUserId:Ljava/lang/String;
    :cond_b
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_d

    .line 147
    const-string v25, "MainActivity"

    const-string v26, "[HTCAlbum][MainActivity][onCreate]: KDDI..."

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v25, "social_bundle"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 149
    .local v22, tabBundle:Landroid/os/Bundle;
    if-eqz v22, :cond_c

    .line 151
    const-string v25, "social_intent"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/content/Intent;

    .line 152
    .local v23, tabIntent:Landroid/content/Intent;
    if-eqz v23, :cond_c

    .line 154
    const-string v25, "service_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 155
    .local v13, serviceName:Ljava/lang/String;
    const-string v25, "service_display"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, serviceDisplayName:Ljava/lang/String;
    const-string v25, "service_url"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 157
    .local v14, serviceUrl:Ljava/lang/String;
    const-string v25, "login_btn_text"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, loginStr:Ljava/lang/String;
    const-string v25, "login_btn_description"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, loginDescription:Ljava/lang/String;
    const-string v25, "opensense_tab"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 160
    .local v8, isOpenSenseTab:Ljava/lang/Boolean;
    const-string v25, "friendplugin"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, friendPluginStr:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, action:Ljava/lang/String;
    const-string v25, "service_name"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v25, "service_display"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v25, "login_btn_text"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v25, "login_btn_description"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v25, "service_url"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v25, "opensense_tab"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 168
    const-string v25, "friendplugin"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .end local v3           #action:Ljava/lang/String;
    .end local v6           #friendPluginStr:Ljava/lang/String;
    .end local v8           #isOpenSenseTab:Ljava/lang/Boolean;
    .end local v9           #loginDescription:Ljava/lang/String;
    .end local v10           #loginStr:Ljava/lang/String;
    .end local v12           #serviceDisplayName:Ljava/lang/String;
    .end local v13           #serviceName:Ljava/lang/String;
    .end local v14           #serviceUrl:Ljava/lang/String;
    .end local v23           #tabIntent:Landroid/content/Intent;
    :cond_c
    const-string v25, "package_name"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, packageName:Ljava/lang/String;
    const-string v25, "MainActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[HTCAlbum][MainActivity][onCreate]: packageName : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/htc/album/ActivityDispatchPluginEntrance;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 178
    .end local v11           #packageName:Ljava/lang/String;
    .end local v22           #tabBundle:Landroid/os/Bundle;
    :cond_d
    const-string v25, "MainActivity"

    const-string v26, "[HTCAlbum][MainActivity][onCreate]: Local: "

    invoke-static/range {v25 .. v26}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-class v26, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "MainActivity"

    const-string v1, "[HTCAlbum][MainActivity][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    const-string v0, "MainActivity"

    const-string v1, "[HTCAlbum][MainActivity][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method
