.class public Lcom/htc/album/helper/CollectionRequeryTask;
.super Landroid/os/AsyncTask;
.source "CollectionRequeryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CollectionRequeryTask"


# instance fields
.field protected mActivityReference:Landroid/app/Activity;

.field protected mCallBack:Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;

.field protected mCollection:Lcom/htc/album/modules/collection/Collection;

.field protected mProgressDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

.field protected mProgressMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/lang/String;Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;)V
    .locals 1
    .parameter "activity"
    .parameter "collection"
    .parameter "message"
    .parameter "callBack"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 14
    iput-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCallBack:Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;

    .line 15
    iput-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 16
    iput-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mActivityReference:Landroid/app/Activity;

    .line 17
    iput-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressMessage:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mActivityReference:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 30
    iput-object p3, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressMessage:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCallBack:Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;

    .line 32
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    invoke-virtual {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->dismiss()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 50
    :cond_0
    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->instance(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iput-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mProgressDialog:Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;

    iget-object v1, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CollectionRequeryTask"

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/helper/HtcDialogManager$DLG_PROGRESS_LOAD;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/CollectionRequeryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    .line 66
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/CollectionRequeryTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/album/helper/CollectionRequeryTask;->dismissProgressDialog()V

    .line 73
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCallBack:Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCallBack:Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;

    invoke-interface {v0}, Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;->onEnd()V

    .line 75
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCallBack:Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/album/helper/CollectionRequeryTask;->mCallBack:Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;

    invoke-interface {v0}, Lcom/htc/album/helper/CollectionRequeryTask$CollectionRequeryCallBack;->onBegin()V

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/helper/CollectionRequeryTask;->showProgressDialog()V

    .line 58
    return-void
.end method
