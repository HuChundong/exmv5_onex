.class Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;
.super Landroid/os/AsyncTask;
.source "PickerDeleteScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerDeleteScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckBestThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field mPickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mScene:Lcom/htc/album/picker/PickerDeleteScene;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/DeleteManager;Ljava/util/ArrayList;Lcom/htc/album/picker/PickerDeleteScene;)V
    .locals 0
    .parameter "deleteMgr"
    .parameter
    .parameter "scene"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/helper/DeleteManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/album/picker/PickerDeleteScene;",
            ")V"
        }
    .end annotation

    .prologue
    .line 533
    .local p2, pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 534
    iput-object p1, p0, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 535
    iput-object p2, p0, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->mPickerList:Ljava/util/ArrayList;

    .line 536
    iput-object p3, p0, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->mScene:Lcom/htc/album/picker/PickerDeleteScene;

    .line 537
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    iget-object v2, p0, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/DeleteManager;->checkDeleteBurstShot(Ljava/util/ArrayList;)Z

    move-result v0

    .line 541
    .local v0, bCanDelete:Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 527
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 546
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 547
    .local v0, bCanDelete:Z
    if-eqz v0, :cond_0

    .line 552
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->mScene:Lcom/htc/album/picker/PickerDeleteScene;

    #getter for: Lcom/htc/album/picker/PickerDeleteScene;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;
    invoke-static {v1}, Lcom/htc/album/picker/PickerDeleteScene;->access$500(Lcom/htc/album/picker/PickerDeleteScene;)Lcom/htc/album/helper/DeleteManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->mScene:Lcom/htc/album/picker/PickerDeleteScene;

    iget-object v2, v2, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/DeleteManager;->deleteMedias(Ljava/util/ArrayList;)V

    .line 562
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->mScene:Lcom/htc/album/picker/PickerDeleteScene;

    const/16 v2, 0x13a9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/album/picker/PickerDeleteScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 559
    iget-object v1, p0, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->mScene:Lcom/htc/album/picker/PickerDeleteScene;

    #setter for: Lcom/htc/album/picker/PickerDeleteScene;->mStartDeleting:Z
    invoke-static {v1, v4}, Lcom/htc/album/picker/PickerDeleteScene;->access$002(Lcom/htc/album/picker/PickerDeleteScene;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 527
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/picker/PickerDeleteScene$CheckBestThread;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
