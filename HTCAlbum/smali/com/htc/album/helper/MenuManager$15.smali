.class Lcom/htc/album/helper/MenuManager$15;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$dialog:Lcom/htc/app/HtcProgressDialog;

.field final synthetic val$newName:Ljava/lang/String;

.field final synthetic val$oldName:Ljava/lang/String;

.field final synthetic val$subFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/app/HtcProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4177
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$15;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$15;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$15;->val$oldName:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/album/helper/MenuManager$15;->val$subFileName:Ljava/lang/String;

    iput-object p7, p0, Lcom/htc/album/helper/MenuManager$15;->val$context:Landroid/content/Context;

    iput-object p8, p0, Lcom/htc/album/helper/MenuManager$15;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iput-object p9, p0, Lcom/htc/album/helper/MenuManager$15;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 4180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v14

    .line 4181
    .local v14, oldPath:Ljava/lang/String;
    if-nez v14, :cond_1

    .line 4183
    const-string v23, "MenuManager"

    const-string v24, "[renameFile][run] Null path found..."

    invoke-static/range {v23 .. v24}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 4185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 4277
    :cond_0
    :goto_0
    return-void

    .line 4189
    :cond_1
    move-object v12, v14

    .line 4190
    .local v12, newPath:Ljava/lang/String;
    const-string v23, "/"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 4191
    .local v9, lastSlashIdx:I
    const/4 v8, -0x1

    .line 4192
    .local v8, index:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v9, v0, :cond_2

    .line 4193
    invoke-virtual {v14, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 4194
    .local v18, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$oldName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    add-int v8, v9, v23

    .line 4199
    .end local v18           #tmp:Ljava/lang/String;
    :goto_1
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_3

    .line 4200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 4196
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$oldName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 4204
    :cond_3
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 4205
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4206
    .local v19, updateData:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4207
    .local v13, oldFile:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4208
    .local v10, newFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v5

    .line 4209
    .local v5, duplicate:Z
    if-nez v5, :cond_5

    invoke-virtual {v13, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v17

    .line 4210
    .local v17, success:Z
    :goto_2
    if-eqz v17, :cond_6

    const v16, 0x7f0a00a1

    .line 4212
    .local v16, showMsg:I
    :goto_3
    if-eqz v17, :cond_4

    .line 4221
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v22

    .line 4222
    .local v22, updateUri:Landroid/net/Uri;
    const/16 v20, 0x0

    .line 4223
    .local v20, updateDisplayName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 4225
    .local v21, updateTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$subFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 4226
    .local v7, idxOfSubName:I
    const/4 v11, 0x0

    .line 4227
    .local v11, newNameWithoutSubName:Ljava/lang/String;
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v7, v0, :cond_7

    .line 4228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 4232
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 4233
    move-object/from16 v21, v11

    .line 4234
    const-string v23, "MenuManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[rename] oldPath "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", newPath "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", newDisplayName "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", newTitle "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4235
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4236
    .local v4, contentVals:Landroid/content/ContentValues;
    const-string v23, "_data"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4237
    const-string v23, "_display_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4238
    const-string v23, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4240
    const/4 v15, 0x0

    .line 4243
    .local v15, rowId:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    .line 4250
    :goto_5
    :try_start_2
    const-string v23, "MenuManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "update data base after rename, got rowId "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$activity:Landroid/app/Activity;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 4254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$activity:Landroid/app/Activity;

    move-object/from16 v23, v0

    new-instance v24, Lcom/htc/album/helper/MenuManager$15$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/helper/MenuManager$15$1;-><init>(Lcom/htc/album/helper/MenuManager$15;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4268
    .end local v4           #contentVals:Landroid/content/ContentValues;
    .end local v7           #idxOfSubName:I
    .end local v11           #newNameWithoutSubName:Ljava/lang/String;
    .end local v15           #rowId:I
    .end local v20           #updateDisplayName:Ljava/lang/String;
    .end local v21           #updateTitle:Ljava/lang/String;
    .end local v22           #updateUri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$context:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/Activity;

    new-instance v24, Lcom/htc/album/helper/MenuManager$15$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/album/helper/MenuManager$15$2;-><init>(Lcom/htc/album/helper/MenuManager$15;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4209
    .end local v16           #showMsg:I
    .end local v17           #success:Z
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 4210
    .restart local v17       #success:Z
    :cond_6
    const v16, 0x7f0a00a0

    goto/16 :goto_3

    .line 4230
    .restart local v7       #idxOfSubName:I
    .restart local v11       #newNameWithoutSubName:Ljava/lang/String;
    .restart local v16       #showMsg:I
    .restart local v20       #updateDisplayName:Ljava/lang/String;
    .restart local v21       #updateTitle:Ljava/lang/String;
    .restart local v22       #updateUri:Landroid/net/Uri;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    goto/16 :goto_4

    .line 4245
    .restart local v4       #contentVals:Landroid/content/ContentValues;
    .restart local v15       #rowId:I
    :catch_0
    move-exception v6

    .line 4247
    .local v6, e:Ljava/lang/Exception;
    const-string v23, "MenuManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[HTCAlbum][MenuManager][renameFile]: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 4261
    .end local v4           #contentVals:Landroid/content/ContentValues;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #idxOfSubName:I
    .end local v11           #newNameWithoutSubName:Ljava/lang/String;
    .end local v15           #rowId:I
    .end local v20           #updateDisplayName:Ljava/lang/String;
    .end local v21           #updateTitle:Ljava/lang/String;
    .end local v22           #updateUri:Landroid/net/Uri;
    :catchall_0
    move-exception v23

    throw v23
.end method
