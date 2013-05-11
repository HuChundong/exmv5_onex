.class public Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "AdapterLocalPhoto4UploadEditor.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AdapterLocalPhoto4UploadEditor"

.field private static final UPLOAD_MAX_LIMIT:I = 0x270f


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mIsException:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

.field private mService:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/UploadEditor/ISceneSourcePlugin;)V
    .locals 2
    .parameter "activity"
    .parameter "sourcePlugin"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/app/Activity;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    .line 36
    iput-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mService:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    .line 38
    iput-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    .line 39
    iput-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    .line 44
    iput-object p2, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "AdapterLocalPhoto4UploadEditor"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    .line 70
    .restart local v0       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    return-object v0
.end method

.method protected onLoadDataBegin()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataBegin()V

    .line 81
    iget-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    const-string v1, "Launch_Service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mService:Ljava/lang/String;

    .line 82
    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const-string v0, "AdapterLocalPhoto4UploadEditor"

    const-string v1, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataEnd]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    .line 221
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataEnd(Ljava/lang/Integer;)V

    .line 222
    return-void

    .line 218
    :cond_1
    const-string v0, "AdapterLocalPhoto4UploadEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataEnd]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 21
    .parameter "params"

    .prologue
    .line 85
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: doInBackground +"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: Launch Service: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mService:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v11, 0x0

    .line 90
    .local v11, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 92
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x270f

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 94
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: overloading..skip... "

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    .line 207
    :goto_0
    return-object p1

    .line 99
    :cond_0
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 101
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: Prepare launch from HtcMediaUpload."

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: Get mediaList Size : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 108
    .local v8, index:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 110
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: exception on ! skip process !"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    if-eqz v8, :cond_1

    .line 116
    const-string v18, "com.htc.opensense.upload.URI"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, strURI:Ljava/lang/String;
    if-nez v14, :cond_3

    .line 119
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: Can\'t get uri from bundle !"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_3
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 123
    .local v16, uri:Landroid/net/Uri;
    if-eqz v14, :cond_1

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    .end local v8           #index:Landroid/os/Bundle;
    .end local v14           #strURI:Ljava/lang/String;
    .end local v16           #uri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.STREAM"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 134
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v9, intentShare:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mSceneSource:Lcom/htc/album/UploadEditor/ISceneSourcePlugin;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mService:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/htc/album/UploadEditor/ISceneSourcePlugin;->getServicePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 137
    .local v15, szPackageName:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v15, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v2, component:Landroid/content/ComponentName;
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "SHARE_INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    new-instance v13, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 144
    .local v13, rinfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "SHARE_INFO"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.STREAM"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 148
    .local v17, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_7

    .line 150
    :cond_5
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: null list"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    goto/16 :goto_0

    .line 130
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v9           #intentShare:Landroid/content/Intent;
    .end local v13           #rinfo:Landroid/content/pm/ResolveInfo;
    .end local v15           #szPackageName:Ljava/lang/String;
    .end local v17           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: init from Bundle NG !"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 154
    .restart local v2       #component:Landroid/content/ComponentName;
    .restart local v9       #intentShare:Landroid/content/Intent;
    .restart local v13       #rinfo:Landroid/content/pm/ResolveInfo;
    .restart local v15       #szPackageName:Ljava/lang/String;
    .restart local v17       #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_7
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "singleShare"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    :cond_8
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: count: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 166
    .local v3, contentResolver:Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 168
    .restart local v16       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 170
    .local v7, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v7, :cond_a

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v7, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v18

    if-nez v18, :cond_b

    .line 172
    :cond_a
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: null list"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 197
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v16           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 199
    .local v4, e:Ljava/lang/Exception;
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIsException:Z

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 176
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v16       #uri:Landroid/net/Uri;
    :cond_b
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    invoke-interface {v7, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    .line 177
    .local v6, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v6, :cond_9

    .line 179
    const/4 v12, 0x0

    .line 180
    .local v12, norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 181
    new-instance v12, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorVideo;

    .end local v12           #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    invoke-static {}, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->instance()Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorVideo;-><init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V

    .line 185
    .restart local v12       #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    :goto_4
    invoke-virtual {v12, v6}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->init(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 187
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: init norCursorItem - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Fail !!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_5
    invoke-interface {v7}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    goto/16 :goto_3

    .line 183
    :cond_c
    new-instance v12, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorImage;

    .end local v12           #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    invoke-static {}, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->instance()Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorImage;-><init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V

    .restart local v12       #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    goto :goto_4

    .line 191
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 205
    .end local v6           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v7           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v12           #norCursorItem:Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
    .end local v16           #uri:Landroid/net/Uri;
    :cond_e
    const-string v18, "AdapterLocalPhoto4UploadEditor"

    const-string v19, "[HTCAlbum][AdapterLocalPhoto4UploadEditor][onLoadDataInBackground]: end"

    invoke-static/range {v18 .. v19}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onUnloadData()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 55
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->mIntent:Landroid/content/Intent;

    .line 50
    return-void
.end method
