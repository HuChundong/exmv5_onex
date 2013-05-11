.class public Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;
.super Landroid/os/AsyncTask;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RequestNewFolderName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "ctx"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->mContext:Landroid/content/Context;

    .line 239
    iput-object p2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->mContext:Landroid/content/Context;

    .line 240
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 234
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 9
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v3, supportStoragesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;>;"
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 249
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #getter for: Lcom/htc/album/helper/PickerFolderCreateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$000(Lcom/htc/album/helper/PickerFolderCreateHelper;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/album/helper/FileOperationHelper;->getDefaultStorageRootPaths(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 251
    .local v5, tmpResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/StorageInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/helper/StorageInfo;

    .line 253
    .local v2, info:Lcom/htc/album/helper/StorageInfo;
    new-instance v4, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;

    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    invoke-virtual {v2}, Lcom/htc/album/helper/StorageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/album/helper/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;-><init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .local v4, tmp:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    iget-object v6, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/helper/FileOperationHelper;->createUniqueFolderName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->mAutoGenerateFileName:Ljava/lang/String;

    .line 255
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/htc/album/helper/StorageInfo;
    .end local v4           #tmp:Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
    .end local v5           #tmpResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/StorageInfo;>;"
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PickerFolderCreateHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RequestNewFolderName] NG = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v3

    .line 264
    :cond_1
    const-string v6, "PickerFolderCreateHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mContext = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 284
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 234
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->onCancelled(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Lcom/htc/album/helper/FileOperationHelper;->cancel()V

    .line 272
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    const-string v1, "RequestNewFolderName"

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->doCancel(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 234
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    #calls: Lcom/htc/album/helper/PickerFolderCreateHelper;->popUpCreaetFolderDialog(Ljava/util/ArrayList;)V
    invoke-static {v0, p1}, Lcom/htc/album/helper/PickerFolderCreateHelper;->access$100(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/util/ArrayList;)V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$RequestNewFolderName;->mContext:Landroid/content/Context;

    .line 280
    return-void
.end method
