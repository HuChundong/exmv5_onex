.class Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;
.super Lcom/htc/album/helper/StorageInfo;
.source "PickerFolderCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/PickerFolderCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupportStorageInfo"
.end annotation


# instance fields
.field public mAutoGenerateFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/PickerFolderCreateHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "path"

    .prologue
    .line 950
    iput-object p1, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->this$0:Lcom/htc/album/helper/PickerFolderCreateHelper;

    .line 951
    invoke-direct {p0, p2, p3}, Lcom/htc/album/helper/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/htc/album/helper/StorageInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 956
    invoke-virtual {p1}, Lcom/htc/album/helper/StorageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->setName(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p1}, Lcom/htc/album/helper/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->setPath(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 962
    const/4 v0, 0x1

    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-ne v0, v1, :cond_0

    .line 964
    const-string v0, "PickerFolderCreateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SupportStorageInfo] mName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAutoGenerateFileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/PickerFolderCreateHelper$SupportStorageInfo;->mAutoGenerateFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_0
    return-void
.end method
