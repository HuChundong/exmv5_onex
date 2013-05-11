.class Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;
.super Landroid/os/AsyncTask;
.source "OnlineEditUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqEditUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG_DO_ADD:I

.field private final TAG_DO_MODIFY:I

.field private final TAG_DO_NOHTING:I

.field private mBundleArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancel:Z

.field private mIsExceptioned:Z

.field private mIsNoRespondExceptioned:Z

.field private mIsServerExceptioned:Z

.field private mServiceName:Ljava/lang/String;

.field private mTimestart:J

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, bundleArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 127
    iput v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->TAG_DO_NOHTING:I

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->TAG_DO_ADD:I

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->TAG_DO_MODIFY:I

    .line 131
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsExceptioned:Z

    .line 132
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsServerExceptioned:Z

    .line 133
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsNoRespondExceptioned:Z

    .line 135
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    .line 138
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mTimestart:J

    .line 141
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mServiceName:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mServiceName:Ljava/lang/String;

    .line 148
    monitor-enter p3

    .line 150
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    .line 151
    monitor-exit p3

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doAddTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V
    .locals 5
    .parameter "mOp"
    .parameter "aPhoto"
    .parameter "faceTag"

    .prologue
    .line 318
    const-string v2, "OnlineEditUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][OnlineEditUpdateManager][doAddTag]: Add tag - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v1, params:Landroid/os/Bundle;
    const-string v2, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v2, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 323
    const-string v2, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 324
    const-string v2, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 325
    const-string v2, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 329
    :try_start_0
    const-string v2, "addPersonToPhoto"

    const-class v3, Lcom/htc/opensense/social/data/Tag;

    invoke-virtual {p1, v2, v3, v1}, Lcom/htc/opensense/social/MediumOp;->addAttachment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v2, "OnlineEditUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][OnlineEditUpdateManager][doAddTag]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NG !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->sw(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V

    goto :goto_0

    .line 337
    .end local v0           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :catch_1
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OnlineEditUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][OnlineEditUpdateManager][doAddTag]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doRemoveTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V
    .locals 5
    .parameter "mOp"
    .parameter "aPhoto"
    .parameter "wfaceTag"

    .prologue
    .line 346
    const-string v2, "OnlineEditUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][OnlineEditUpdateManager][doRemoveTag]: remove tag - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v1, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {v1}, Lcom/htc/opensense/social/data/FaceTag;-><init>()V

    .line 349
    .local v1, faceTag:Lcom/htc/opensense/social/data/FaceTag;
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/social/data/FaceTag;->setId(Ljava/lang/String;)V

    .line 356
    :try_start_0
    const-string v2, "removePersonFromPhoto"

    const-class v3, Lcom/htc/opensense/social/data/Tag;

    invoke-virtual {p1, v2, v3, v1}, Lcom/htc/opensense/social/MediumOp;->deleteAttachment(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/opensense/social/data/Attachment;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v2, "OnlineEditUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][OnlineEditUpdateManager][doRemoveTag]: remove tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NG !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->sw(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V

    goto :goto_0

    .line 363
    .end local v0           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :catch_1
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OnlineEditUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][OnlineEditUpdateManager][doRemoveTag]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDesAndTitle(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 11
    .parameter "mOp"
    .parameter "bundle"
    .parameter "aPhoto"

    .prologue
    const/4 v10, 0x1

    .line 210
    const/4 v6, 0x0

    .line 212
    .local v6, updateDescription:Z
    const-string v7, "title"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, strNewTitle:Ljava/lang/String;
    const-string v7, "description"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, strNewDes:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, strOldTitle:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, strOldDes:Ljava/lang/String;
    const-string v7, "OnlineEditUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][OnlineEditUpdateManager][updateDesAndTitle]: title/desc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v0, bundleUpdate:Landroid/os/Bundle;
    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v10, v7, :cond_3

    .line 222
    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    :cond_0
    invoke-virtual {p3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDescription(Ljava/lang/String;)V

    .line 225
    const/4 v6, 0x1

    .line 226
    const-string v7, "title"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    :goto_0
    const-string v7, "OnlineEditUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][OnlineEditUpdateManager][updateDesAndTitle]: update title/desc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-ne v10, v6, :cond_2

    .line 246
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/opensense/social/MediumOp;->edit(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_2
    :goto_1
    return-void

    .line 229
    :cond_3
    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v7, v7, v10

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v10, v7, :cond_1

    .line 231
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 233
    :cond_4
    invoke-virtual {p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setName(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDescription(Ljava/lang/String;)V

    .line 235
    const/4 v6, 0x1

    .line 237
    const-string v7, "title"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v7, "description"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v7, "OnlineEditUpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][OnlineEditUpdateManager][updateDesAndTitle]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, v1, v10}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V

    goto :goto_1
.end method

.method private updateTag(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 11
    .parameter "mOp"
    .parameter "bundle"
    .parameter "aPhoto"

    .prologue
    const/high16 v10, 0x40a0

    .line 256
    const-string v8, "tags"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 257
    .local v6, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v7

    .line 259
    .local v7, tagsArrayOriginal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TagUtils/TagInfo;

    .line 263
    .local v4, indexTag:Lcom/htc/album/TagUtils/TagInfo;
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    iget-object v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, faceTag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    iget v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterX(F)V

    .line 265
    iget v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterY(F)V

    .line 266
    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setWidth(F)V

    .line 267
    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setHeight(F)V

    .line 268
    iget-object v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setText(Ljava/lang/String;)V

    .line 270
    const/4 v5, 0x1

    .line 272
    .local v5, nTagEditStatus:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 277
    .local v3, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    .line 282
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    const/4 v5, 0x0

    .line 303
    .end local v3           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_2
    :goto_1
    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 305
    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doAddTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    goto :goto_0

    .line 291
    .restart local v3       #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_3
    const/4 v5, 0x2

    .line 293
    invoke-direct {p0, p1, p3, v3}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doRemoveTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    .line 294
    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doAddTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    .line 296
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    .end local v0           #faceTag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v4           #indexTag:Lcom/htc/album/TagUtils/TagInfo;
    .end local v5           #nTagEditStatus:I
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 312
    .restart local v3       #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    invoke-direct {p0, p1, p3, v3}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doRemoveTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    goto :goto_2

    .line 314
    .end local v3           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_5
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 13
    .parameter "urls"

    .prologue
    const/4 v12, 0x1

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mTimestart:J

    .line 158
    const-string v6, "OnlineEditUpdateManager"

    const-string v7, "[HTCAlbum][OnlineEditUpdateManager][doInBackground]: Start"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v6, v6, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v6, :cond_0

    .line 164
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 166
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 203
    .end local v3           #i:I
    :cond_0
    :goto_1
    const-string v6, "OnlineEditUpdateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][OnlineEditUpdateManager][doInBackground]: End: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mTimestart:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    return-object v6

    .line 169
    .restart local v3       #i:I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 170
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "WrapperPhoto"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 172
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 174
    :cond_2
    const-string v6, "OnlineEditUpdateManager"

    const-string v7, "[HTCAlbum][OnlineEditUpdateManager][doInBackground]: skip 1"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_3
    const/4 v6, 0x1

    new-array v5, v6, [Lcom/htc/opensense/social/data/Medium;

    .line 180
    .local v5, medium:[Lcom/htc/opensense/social/data/Medium;
    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v7

    aput-object v7, v5, v6

    .line 181
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v6, v6, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    .line 183
    .local v4, mOp:Lcom/htc/opensense/social/MediumOp;
    if-nez v4, :cond_4

    .line 185
    const-string v6, "OnlineEditUpdateManager"

    const-string v7, "[HTCAlbum][OnlineEditUpdateManager][doInBackground]: null mOp"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_4
    const-string v6, "OnlineEditUpdateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][OnlineEditUpdateManager][doInBackground]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v4, v1, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->updateDesAndTitle(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V

    .line 193
    invoke-direct {p0, v4, v1, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->updateTag(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 198
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #i:I
    .end local v4           #mOp:Lcom/htc/opensense/social/MediumOp;
    .end local v5           #medium:[Lcom/htc/opensense/social/data/Medium;
    :catch_0
    move-exception v2

    .line 200
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "OnlineEditUpdateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][OnlineEditUpdateManager][doInBackground]: Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    .line 372
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 402
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    if-ne v1, v3, :cond_0

    .line 404
    const-string v1, "OnlineEditUpdateManager"

    const-string v2, "[HTCAlbum][OnlineEditUpdateManager][onPostExecute]: Cancelled!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateCancel()V

    .line 407
    :cond_0
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsNoRespondExceptioned:Z

    if-ne v1, v3, :cond_1

    .line 409
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v1

    const/16 v2, 0x4ee9

    invoke-interface {v1, v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateError(I)V

    .line 410
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    .line 433
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsServerExceptioned:Z

    if-eqz v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v1

    const/16 v2, 0x4eea

    invoke-interface {v1, v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateError(I)V

    .line 415
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OnlineEditUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][OnlineEditUpdateManager][onPostExecute]: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsExceptioned:Z

    if-ne v3, v1, :cond_3

    .line 419
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v1

    const/16 v2, 0x4eeb

    invoke-interface {v1, v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateError(I)V

    .line 420
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    goto :goto_0

    .line 424
    :cond_3
    const-string v1, "OnlineEditUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][OnlineEditUpdateManager][onPostExecute]:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateSuccess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 375
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V
    .locals 4
    .parameter "e"
    .parameter "isMarkException"

    .prologue
    const/4 v3, 0x1

    .line 379
    invoke-virtual {p1}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v0

    .line 381
    .local v0, reason:Lcom/htc/opensense/social/ErrorCode;
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->SERVER_ERROR:Lcom/htc/opensense/social/ErrorCode;

    if-ne v0, v1, :cond_1

    .line 382
    const-string v1, "OnlineEditUpdateManager"

    const-string v2, "[HTCAlbum][OnlineEditUpdateManager][showError]: SERVER_ERROR"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsServerExceptioned:Z

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->SERVICE_NOT_AVAILABLE:Lcom/htc/opensense/social/ErrorCode;

    if-ne v0, v1, :cond_2

    .line 385
    const-string v1, "OnlineEditUpdateManager"

    const-string v2, "[HTCAlbum][OnlineEditUpdateManager][showError]: SERVICE_NOT_AVAILABLE"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsNoRespondExceptioned:Z

    goto :goto_0

    .line 389
    :cond_2
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->NETWORK_ERROR:Lcom/htc/opensense/social/ErrorCode;

    if-ne v0, v1, :cond_3

    .line 390
    const-string v1, "OnlineEditUpdateManager"

    const-string v2, "[HTCAlbum][OnlineEditUpdateManager][showError]: NETWORK_ERROR"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_1
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsExceptioned:Z

    goto :goto_0

    .line 392
    :cond_3
    const-string v1, "OnlineEditUpdateManager"

    const-string v2, "[HTCAlbum][OnlineEditUpdateManager][showError]: OTHER ERROR"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
